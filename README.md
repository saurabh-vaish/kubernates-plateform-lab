# platform-lab

Production-grade Kubernetes and Platform Engineering lab repository.

## Goals

- Learn Kubernetes deeply
- Build a production-like platform
- Practice debugging and operations
- Progress from Kind to AWS EKS

## Layout

| Path | Purpose |
|------|---------|
| `docs/` | Architecture, ADRs, runbooks, troubleshooting, glossary, learning notes |
| `environments/` | Cluster bootstrap for Kind, kubeadm, and EKS |
| `infrastructure/` | Networking, storage, security, observability, GitOps |
| `applications/` | Sample workloads (frontend, backend, postgres, redis, worker) |
| `shared/` | Namespaces, RBAC, StorageClasses, NetworkPolicies |
| `labs/` | Sprint-based guided exercises |
| `scripts/` | Helper scripts for setup and teardown |
| `tools/` | Local tooling and utilities |
| `assets/` | Images and other static assets |
| `archive/` | Superseded material kept for reference |

## Rules

- Never use the default namespace for applications
- Never use `latest` image tags
- Always define requests/limits
- Use ConfigMaps for configuration
- Use Secrets for sensitive data
- Everything lives in Git

## Getting started

1. Pick an environment under `environments/` (start with Kind).
2. Apply shared resources from `shared/`.
3. Install platform pieces from `infrastructure/`.
4. Deploy sample apps from `applications/`.
5. Follow labs under `labs/sprint-01/`.

See [docs/architecture/overall-platform.md](docs/architecture/overall-platform.md) for the full platform picture.
