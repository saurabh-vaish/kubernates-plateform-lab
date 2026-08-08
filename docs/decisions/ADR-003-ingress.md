# ADR-003: Ingress

## Status

Proposed

## Context

HTTP(S) routing to applications needs a stable ingress controller for local and non-cloud environments.

## Decision

Use ingress-nginx as the primary Ingress controller. Explore Gateway API in parallel under `infrastructure/networking/gateway-api/`.

## Consequences

- Familiar Ingress resources for labs and apps
- Path open to migrate toward Gateway API later
- Requires MetalLB (or equivalent) for LoadBalancer exposure on Kind
