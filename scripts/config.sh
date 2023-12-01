#! /bin/bash

export PYTHON_BIN="python"
export MRSM_HELM_VERSION="0.0.9"
export MRSM_VERSION=$(mrsm -V | sed 's/Meerschaum v//g')
