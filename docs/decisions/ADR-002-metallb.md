# ADR-002: MetalLB

## Status

Proposed

## Context

Kind and bare-metal-style clusters do not provide a cloud LoadBalancer. Services of type `LoadBalancer` stay pending without an external implementation.

## Decision

Use MetalLB for LoadBalancer services in Kind (and later kubeadm) environments.

## Consequences

- Apps can use `type: LoadBalancer` consistently across local and cloud-like setups
- Requires a usable IP address pool for the lab network
- EKS will use the cloud provider LB instead of MetalLB
