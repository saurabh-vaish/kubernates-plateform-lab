# Overall Platform

High-level view of the platform-lab stack: environments, shared infrastructure, and sample applications.

## Layers

1. **Environments** — Kind (local), kubeadm, EKS
2. **Infrastructure** — networking, storage, security, observability, GitOps
3. **Shared** — namespaces, RBAC, StorageClasses, NetworkPolicies
4. **Applications** — frontend, backend, postgres, redis, worker

## Design principles

- Everything lives in Git
- No default namespace for applications
- No `latest` image tags
- Always set requests/limits
- ConfigMaps for config; Secrets for sensitive data
