<#
.SYNOPSIS
  Sanitised example of the storage reporting pattern used by the M365 Storage Optimiser case study.

.DESCRIPTION
  This is not production tenant code. It shows the control flow only:
  certificate auth, Graph request paging, per-site aggregation, retry/backoff, and CSV output.
#>
param(
    [Parameter(Mandatory)] [string] $TenantId,
    [Parameter(Mandatory)] [string] $ClientId,
    [Parameter(Mandatory)] [string] $CertificateThumbprint,
    [string] $OutputPath = ".\storage-report.csv",
    [int] $PageSize = 100
)

$ErrorActionPreference = "Stop"

function Invoke-WithRetry {
    param([scriptblock] $Operation, [int] $Attempts = 4)

    for ($i = 1; $i -le $Attempts; $i++) {
        try { return & $Operation }
        catch {
            if ($i -eq $Attempts) { throw }
            $delay = [math]::Min(30, [math]::Pow(2, $i))
            Write-Warning "Request failed; retrying in $delay seconds ($i/$Attempts)."
            Start-Sleep -Seconds $delay
        }
    }
}

function Get-GraphPage {
    param([string] $Uri)
    Invoke-WithRetry { Invoke-MgGraphRequest -Method GET -Uri $Uri }
}

# ponytail: certificate auth is the smallest safe non-interactive pattern; switch to managed identity only when hosted in Azure.
Connect-MgGraph -TenantId $TenantId -ClientId $ClientId -CertificateThumbprint $CertificateThumbprint -NoWelcome

$rows = New-Object System.Collections.Generic.List[object]
$uri = "https://graph.microsoft.com/v1.0/sites?search=*&`$top=$PageSize"

while ($uri) {
    $page = Get-GraphPage -Uri $uri

    foreach ($site in $page.value) {
        $detail = Get-GraphPage -Uri "https://graph.microsoft.com/v1.0/sites/$($site.id)?`$select=id,displayName,webUrl"
        $drive = Get-GraphPage -Uri "https://graph.microsoft.com/v1.0/sites/$($site.id)/drive?`$select=quota"

        $usedGb = if ($drive.quota.used) { [math]::Round($drive.quota.used / 1GB, 2) } else { 0 }
        $totalGb = if ($drive.quota.total) { [math]::Round($drive.quota.total / 1GB, 2) } else { 0 }

        $rows.Add([pscustomobject]@{
            SiteName = $detail.displayName
            Url      = $detail.webUrl
            UsedGB   = $usedGb
            TotalGB  = $totalGb
            Scanned  = (Get-Date).ToString("s")
        })
    }

    $uri = $page.'@odata.nextLink'
}

$rows | Sort-Object UsedGB -Descending | Export-Csv -NoTypeInformation -Encoding UTF8 -Path $OutputPath
Write-Host "Wrote $($rows.Count) site rows to $OutputPath"
