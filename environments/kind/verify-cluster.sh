
#!/usr/bin/env bash

###############################################################################
# Verifies the Platform Lab cluster.
###############################################################################

# set -euo pipefail is a bash script that sets the script to exit if any command fails, and if any variable is not set.
# This is a good practice to avoid silent failures and to make the script more robust. Its as fail fast approach.
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