# M365 Storage Optimiser

![Demo](index.html)

Enterprise SharePoint and OneDrive storage automation suite. Built for a live 32TB M365 tenant — **reduced storage utilisation from 98% to 64% in under 6 months** without deleting a single user account or critical file.

> **⚠️ This is a demo and portfolio showcase.**  
> The visual app in `index.html` uses simulated data to demonstrate the approach. The real production system ran against a live council tenant with Entra ID certificate authentication, JWT assertions, Microsoft Graph API queries, and SharePoint Online management cmdlets.

---

## 📊 The Achievement

| Metric | Before | After |
|--------|--------|-------|
| Storage Utilisation | **98%** | **64%** |
| Version History Limit | **500** (default) | **25** |
| Total Storage | 32 TB | ~21 TB |
| Timeline | — | 6 months |
| Data Loss | — | **Zero** |
| External Spend | — | **£0** (built in-house) |

## 🔧 What the App Demonstrates

| Tool | Description |
|------|-------------|
| **Scan** | Discover all SharePoint sites and report storage usage, file counts, and version history limits |
| **Trim** | Set version history limits in throttling-safe batches and trim excess file versions |
| **Status** | Poll batch-delete job progress across all sites |
| **Setup** | Complete Entra ID + certificate authentication setup guide (6 steps) |
| **Tools** | Full inventory of 26+ PowerShell scripts |
| **Docs** | Supporting documentation created alongside the project |
| **Report** | Before/after storage report with summary metrics |

## 🛠 The Real Pipeline

```
┌─────────────┐    ┌──────────────┐    ┌───────────────┐    ┌──────────────┐
│  Entra ID   │───▶│  Storage     │───▶│  Set Version  │───▶│  Batch Trim  │
│  Cert Auth  │    │  Counter.ps1 │    │  Limit.ps1    │    │  Job.ps1     │
└─────────────┘    └──────────────┘    └───────────────┘    └──────────────┘
                                                             │
                                                             ▼
┌─────────────┐    ┌──────────────┐    ┌───────────────┐
│  Audit Log  │◀───│  Job Status  │◀───│  Progress     │
│  Export     │    │  Check.ps1   │    │  Poll.ps1     │
└─────────────┘    └──────────────┘    └───────────────┘
```

### Key PowerShell Scripts

- **Combined.ps1** — Main orchestrator: CSV import, version limit prompt, batch set, batch trim, audit log
- **StorageCounter.ps1** — Builds a JWT assertion from a certificate, authenticates via OAuth 2.0 client credentials flow, queries the Microsoft Graph API for every SharePoint site's storage
- **Working_Job_Status.ps1** — Full status dashboard: polls the master CSV and updates 15+ columns per site
- **PrivateChannelInfoCheck.ps1** — Enumerates all Teams, all channels (standard + private), and all members via Graph API
- **OneDriveCheck.ps1** — Batch OneDrive site check with exponential backoff, 50-site batches, and per-batch progress saves

## 💻 Production Architecture

- **Authentication**: Entra ID app registration with certificate-based authentication
- **Token Flow**: JWT assertion construction → OAuth 2.0 client credentials → Microsoft Graph API access
- **Batch Processing**: Throttling-safe batches with configurable delays between batches
- **Monitoring**: 90+ iterative progress CSV files tracking per-site job status
- **Audit Trail**: Every action logged with timestamps, site URLs, file counts, and storage metrics

## 🔐 Setup Guide

The detailed Entra ID setup guide is included in the app under the **Setup** tab. It covers:

1. Creating an Entra ID app registration
2. Configuring API permissions (SharePoint, Microsoft Graph)
3. Generating and installing self-signed certificates
4. Building JWT assertions for OAuth 2.0
5. Authenticating PowerShell scripts with certificate-based auth

## 📄 Documentation

The full project lifecycle is documented in several supporting documents created alongside the project:

- **SharePoint Version History Project Document** — Full SDLC: objectives, challenges, solution, testing, deployment, outcome
- **Entra ID App Registration Guide** — Step-by-step with screenshots (2.7 MB)
- **SharePoint Versioning User Guide** — End-user documentation
- **Project Reports** — Housing benefits automation, unlicensed OneDrive cleanup, financial systems runbook

---

## 👤 About the Author

Built as a portfolio project by Matthew Lotts — an automation developer who ships production software with AI-assisted development. Works with Python, PowerShell, SQL, Microsoft Graph API, and LLM tooling. See [github.com/MatthewRobertLotts](https://github.com/MatthewRobertLotts) for more projects.

*This project was entirely built with AI-assisted development using Claude, OpenAI, and Hermes Agent.*