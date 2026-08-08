
#!/usr/bin/env bash

###############################################################################
# File:
#   create-cluster.sh
#
# Purpose:
#   Creates the Platform Lab Kind cluster.
#
# Usage:
#   ./create-cluster.sh
#
# Requirements:
#   Docker
#   Kind
#   kubectl
#
###############################################################################

set -euo pipefail

###############################################################################
# Determine script directory.
#
# This allows the script to work regardless of the current working directory.
###############################################################################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

###############################################################################
# Load environment variables.
###############################################################################

source "${SCRIPT_DIR}/.env"

echo "===================================================="
echo "Creating Kind Cluster"
echo "===================================================="

echo "Cluster Name : ${CLUSTER_NAME}"
echo "Node Image   : ${KIND_NODE_IMAGE}"

###############################################################################
# Create Cluster
###############################################################################

kind create cluster \
  --name "${CLUSTER_NAME}" \
  --image "${KIND_NODE_IMAGE}" \
  --config "${SCRIPT_DIR}/kind-cluster-config.yaml"

echo
echo "Cluster created successfully."