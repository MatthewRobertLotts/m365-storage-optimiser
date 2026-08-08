# M365 Storage Optimiser

**Live demo → https://matthewrobertlotts.github.io/m365-storage-optimiser/**

Enterprise SharePoint storage automation suite. Reduced a 32TB M365 tenant from 98% to 64% utilisation in under 6 months — no data loss, no user accounts deleted, zero external spend.

---

## The Achievement

- 32TB → 21TB storage (34% reduction)
- Version history limit: 500 → 25 (90% reduction)
- 90+ iterative monitoring runs tracking per-site progress
- 12 PowerShell scripts forming a complete automation pipeline
- Entra ID certificate authentication with JWT assertion flow
- Batch processing with throttling-safe delays

---

## What the Demo App Shows

- **Scan** — Discover SharePoint sites and report storage, files, and version limits
- **Trim** — Set version limits in configurable batches with throttle-safe pauses
- **Status** — Monitor batch-delete job progress across all sites
- **Tools** — Full inventory of 26+ PowerShell scripts
- **Setup** — Complete Entra ID + certificate auth guide (6 steps)
- **Docs** — Supporting project documentation
- **Report** — Before/after comparison with summary metrics

---

## Key Scripts

**Combined.ps1** — Main orchestrator: CSV import, version limit prompt, batch set, batch trim, audit log

**StorageCounter.ps1** — Builds a JWT assertion from a certificate, authenticates via OAuth 2.0 client credentials, queries Microsoft Graph API for every site's storage

**Working_Job_Status.ps1** — Full status dashboard: polls Master.csv, updates 15+ columns per site

**PrivateChannelInfoCheck.ps1** — Enumerates all Teams, all channels (standard + private), all members via Graph API

**OneDriveCheck.ps1** — Batch OneDrive site check with exponential backoff, 50-site batches, per-batch CSV saves

---

## Production Architecture

- **Authentication**: Entra ID app registration with certificate-based auth
- **Token Flow**: JWT assertion → OAuth 2.0 client credentials → Microsoft Graph API
- **Batch Processing**: Configurable batch sizes with delays to avoid API throttling
- **Monitoring**: 90+ iterative progress CSV files tracking per-site job status
- **Audit Trail**: Every action logged with timestamps, site URLs, and storage metrics