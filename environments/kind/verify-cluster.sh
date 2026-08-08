
#!/usr/bin/env bash

###############################################################################
# Verifies the Platform Lab cluster.
###############################################################################

set -euo pipefail

echo
echo "========== Cluster =========="

kubectl cluster-info

echo
echo "========== Nodes =========="

kubectl get nodes -o wide

echo
echo "========== System Pods =========="

kubectl get pods -n kube-system -o wide

echo
echo "========== Component Health =========="

kubectl get --raw='/readyz?verbose'