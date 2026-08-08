# Networking

Platform networking: CNI, MetalLB, Ingress / Gateway API, and NetworkPolicies.

## Components

| Component | Path | Role |
|-----------|------|------|
| CNI | `infrastructure/networking/cni/` | Pod networking |
| MetalLB | `infrastructure/networking/metallb/` | LoadBalancer services on bare metal / Kind |
| ingress-nginx | `infrastructure/networking/ingress-nginx/` | HTTP(S) ingress |
| Gateway API | `infrastructure/networking/gateway-api/` | Next-gen traffic APIs |
| NetworkPolicies | `shared/networkpolicies/` | Pod traffic control |

## Related

- [ADR-002 MetalLB](../decisions/ADR-002-metallb.md)
- [ADR-003 Ingress](../decisions/ADR-003-ingress.md)
