# Observability

Metrics, logs, and traces for the lab platform.

## Components

| Area | Path | Role |
|------|------|------|
| Observability stack | `infrastructure/observability/` | Metrics, logging, tracing installs |

## Signals

- **Metrics** — cluster and app health
- **Logs** — debugging and audit
- **Traces** — request paths across services

```
kubectl get pods

internally 

kubectl

↓

Read ~/.kube/config

↓

Find current-context

↓

Find cluster

↓

Find user

↓

Authenticate

↓

API Server

↓

Response

```