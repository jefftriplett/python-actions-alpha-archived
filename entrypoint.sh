#!/bin/bash

set -e

if ! [ -e "${GITHUB_WORKSPACE}/venv/bin/activate" ]; then
    python -m venv "${GITHUB_WORKSPACE}/venv/"
fi

source "${GITHUB_WORKSPACE}/venv/bin/activate"

sh -c "$*"
