# Storage

Persistent storage for platform and application workloads.

## Components

| Component | Path | Role |
|-----------|------|------|
| StorageClasses | `shared/storageclasses/` | Dynamic provisioning classes |
| Infrastructure storage | `infrastructure/storage/` | CSI / provisioner installs |
| App PVCs | `applications/*/ ` | Workload volume claims |
