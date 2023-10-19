#! /bin/bash

export PYTHON_BIN="python3.11"
export MRSM_HELM_VERSION="0.0.1"
export MRSM_VERSION=$(mrsm -V | sed 's/Meerschaum v//g')
