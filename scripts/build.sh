#! /bin/sh

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROOT_DIR="$HERE/.."
source "$ROOT_DIR"/scripts/config.sh

cd "$ROOT_DIR"

tar -czvf meerschaum-${MRSM_HELM_VERSION}.tgz meerschaum
