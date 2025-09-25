#!/bin/bash

set -e

. ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-contrib/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations, 
# and if missing - will download a temporary copy that automatically get deleted at the end 
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

# Convert comma-separated string to space-separated string
PLUGINS_SPACE_SEPARATED=$(echo "$PLUGINS" | tr ',' ' ')
OMZPLUGINS_SPACE_SEPARATED=$(echo "$OMZPLUGINS" | tr ',' ' ')

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-extra/features/zsh-plugins:0" \
    --option plugins="$PLUGINS_SPACE_SEPARATED" --option omzPlugins="$OMZPLUGINS_SPACE_SEPARATED"
