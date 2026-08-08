<div align="center">
  <h1>M365 Storage Optimiser</h1>
  <p><strong>Enterprise Microsoft 365 storage automation case study.</strong></p>
</div>

<p align="center">
  <a href="https://matthewrobertlotts.github.io/m365-storage-optimiser/"><img src="https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-4285F4?logo=githubpages&logoColor=white" alt="Live demo"></a>
  <img src="https://img.shields.io/badge/PowerShell-5391FE?logo=powershell&logoColor=white" alt="PowerShell">
  <img src="https://img.shields.io/badge/Microsoft%20Graph-0B3067" alt="Microsoft Graph">
  <img src="https://img.shields.io/badge/Entra%20ID-Certificate%20Auth-0B3067" alt="Entra ID">
</p>

## Result

Reduced a Microsoft 365 estate from **98% to 64% storage utilisation** in under 6 months using a PowerShell automation pipeline, Microsoft Graph, SharePoint Online tooling, and Entra ID certificate authentication.

| Metric | Before | After |
|---|---:|---:|
| Storage used | 32 TB | 21 TB |
| Utilisation | 98% | 64% |
| Version history limit | 500 | 25 |
| External spend | — | £0 |
| Data loss | — | 0 accounts deleted |

> Portfolio note: this is a sanitised reconstruction of the project workflow. Organisation names, tenant data, and production scripts are withheld.

## Live demo

[Launch the interactive case-study demo](https://matthewrobertlotts.github.io/m365-storage-optimiser/)

The demo shows the operational flow: tenant scan, version-limit trimming, batch job monitoring, tool inventory, Entra ID setup, documentation, and final report.

## Pipeline

```text
Entra ID certificate auth
        │
        ▼
Graph/API storage discovery
        │
        ▼
SharePoint version-limit policy
        │
        ▼
Batch trim jobs + status polling
        │
        ▼
Audit log + before/after report
```

## What this demonstrates

- PowerShell automation against Microsoft 365 and SharePoint Online.
- Certificate/JWT authentication through Entra ID.
- Batch processing with monitoring and audit logs.
- Practical business impact: cost avoidance, risk control, and measurable storage reduction.


## Auth note

The live demo now separates interactive/delegated PnP setup from unattended app-only certificate automation. The production workflow used the certificate/app-only pattern; tenant identifiers and production scripts remain withheld.

## Sanitised code sample

A production-safe source release is not possible because the original scripts touched live tenant data. This repo includes a sanitised example showing the implementation pattern without organisation identifiers or secrets:

```text
scripts/sanitised-storage-report-example.ps1
```

## License

Apache License 2.0. See [`LICENSE`](LICENSE).
