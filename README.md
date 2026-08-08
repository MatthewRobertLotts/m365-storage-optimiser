<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=gradient&customColorList=0,2,3,4,6,8&height=5&section=header" width="100%" />
</p>

<div align="center">
  <h1>💾 M365 Storage Optimiser</h1>
  <p><strong>Enterprise SharePoint storage automation suite</strong><br/>32TB → 21TB · 34% reduction · zero external spend · zero data loss</p>
</div>

<p align="center">
  <a href="https://matthewrobertlotts.github.io/m365-storage-optimiser/">
    <img src="https://img.shields.io/badge/Live%20Demo-4285F4?style=for-the-badge&logo=githubpages&logoColor=white"></a>
  <a href="#">
    <img src="https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white"></a>
  <a href="#">
    <img src="https://img.shields.io/badge/HTML%2FJS%2FCSS-E34F26?style=for-the-badge&logo=html5&logoColor=white"></a>
  <a href="#">
    <img src="https://img.shields.io/badge/Entra%20ID-0B3067?style=for-the-badge&logo=microsoft&logoColor=white"></a>
  <a href="#">
    <img src="https://img.shields.io/badge/Apache%202.0-blue?style=for-the-badge"></a>
</p>

---

## 🏆 The Achievement

> Reduced a **32TB Microsoft 365 tenant** from **98% to 64% storage utilisation** in under 6 months — no data loss, no deleted accounts, zero external spend.

| Metric | Before | After | Reduction |
|--------|--------|-------|-----------|
| Storage | 32 TB | 21 TB | **34%** |
| Version history limit | 500 | 25 | **90%** |
| Monitor runs | — | 90+ | Automated |
| PowerShell scripts | — | 12 | Complete pipeline |
| Auth | — | Entra ID + JWT | Certificate assertion |

---

## 🚀 Live Demo

[**Launch the interactive demo**](https://matthewrobertlotts.github.io/m365-storage-optimiser/)

The demo app shows the complete workflow:

| Tab | What it does |
|-----|-------------|
| 🔍 **Scan** | Discover SharePoint sites, report storage/files/version limits |
| ✂️ **Trim** | Set version limits in configurable batches with throttle-safe pauses |
| 📊 **Status** | Monitor batch-delete job progress across all sites |
| 🛠️ **Tools** | Full inventory of 12 PowerShell scripts |
| ⚙️ **Setup** | Complete Entra ID + certificate auth guide (6 steps) |
| 📖 **Docs** | Supporting project documentation |
| 📋 **Report** | Before/after comparison with summary metrics |

---

## 🔧 The Pipeline

```
PowerShell Script Suite (12 scripts)
├── 1. Discovery & Audit
│   ├── Scan-Sites.ps1
│   ├── Get-StorageReport.ps1
│   └── Export-SiteDetails.ps1
├── 2. Policy Application
│   ├── Set-VersionLimits.ps1
│   ├── Apply-Retention.ps1
│   └── Bulk-Update.ps1
├── 3. Monitoring
│   ├── Track-Jobs.ps1
│   ├── Alert-OnThreshold.ps1
│   └── Status-Dashboard.ps1
└── 4. Reporting
    ├── Generate-Report.ps1
    ├── Compare-Baselines.ps1
    └── Export-AuditLog.ps1

Auth: Entra ID certificate + JWT assertion flow
Batch: Throttling-safe with configurable delays
```

---

## 📄 License

Copyright © 2026 Matthew Lotts. Licensed under the **Apache License, Version 2.0**. See [`LICENSE`](LICENSE) for details.

---

<p align="center">
  <a href="https://github.com/MatthewRobertLotts/m365-storage-optimiser/stargazers"><img src="https://img.shields.io/github/stars/MatthewRobertLotts/m365-storage-optimiser?style=social&label=Stars"></a>
  <a href="https://github.com/MatthewRobertLotts/m365-storage-optimiser/network"><img src="https://img.shields.io/github/forks/MatthewRobertLotts/m365-storage-optimiser?style=social&label=Forks"></a>
  <a href="https://matthewrobertlotts.github.io/m365-storage-optimiser/"><img src="https://img.shields.io/badge/▶️%20Live%20Demo-4285F4?style=social"></a>
</p>