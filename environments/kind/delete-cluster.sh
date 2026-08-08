
#!/usr/bin/env bash

###############################################################################
# Deletes the Kind cluster.
###############################################################################

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/.env"

echo "Deleting cluster..."

kind delete cluster --name "${CLUSTER_NAME}"

echo "Done."