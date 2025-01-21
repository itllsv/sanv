#!/usr/bin/env bash

SANV_DIR="$(cd "$(dirname "$(realpath "$0")")" && pwd)"
source "$SANV_DIR/vars"
source "$SANV_DIR/lib/check_sanv_executable"

check_sanv_executable
