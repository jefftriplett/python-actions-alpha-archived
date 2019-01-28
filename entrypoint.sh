#!/bin/bash

set -e

if ! [ -e "${GITHUB_WORKSPACE}/bin/activate" ]; then
    python3 -m venv "${GITHUB_WORKSPACE}"
fi

source "${GITHUB_WORKSPACE}/bin/activate"

sh -c "$*"
