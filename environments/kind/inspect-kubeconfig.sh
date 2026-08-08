#!/usr/bin/env bash

###############################################################################
# File:
# inspect-kubeconfig.sh
#
# Purpose:
# Display the active Kubernetes configuration.
#
###############################################################################

set -euo pipefail

echo
echo "=================================================="
echo "Current Context"
echo "=================================================="

kubectl config current-context

echo
echo "=================================================="
echo "Contexts"
echo "=================================================="

kubectl config get-contexts

echo
echo "=================================================="
echo "Clusters"
echo "=================================================="

kubectl config get-clusters

echo
echo "=================================================="
echo "Users"
echo "=================================================="

kubectl config view -o jsonpath='{.users[*].name}'

echo