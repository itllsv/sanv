#!/usr/bin/env bash

VM3S_OPT="$1"
NODE_VERSION="$2"
INSTALL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/versions"
VERSION_MAJOR_REGEX="^[0-9]{1,2}$"
VERSION_WITH_DOTS_REGEX="^[0-9]{1,2}(\.[0-9]{1,2}){2}$"

if [[ -z "$VM3S_OPT" ]]; then
  echo "An OPTION is required. Ex: install | search | list | use | remove"
fi

if [[ -z "$NODE_VERSION" && "$VM3S_OPT" != "search" ]]; then
  echo "VERSION is required. Ex: latest | 22 | 22.13.0"
  exit 1
fi

if [[ "$VM3S_OPT" = "install" ]]; then
  URL="https://nodejs.org/dist/"

  if [[ "$NODE_VERSION" =~ $VERSION_MAJOR_REGEX ]]; then
    URL="${URL}latest-v$NODE_VERSION.x/node-latest-v$NODE_VERSION.x-linux-x64.tar.xz"
  elif [[ "$NODE_VERSION" =~ $VERSION_WITH_DOTS_REGEX ]]; then
    URL="${URL}v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"
  else
    URL="${URL}$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz"
  fi

  mkdir "$INSTALL_DIR"/"$NODE_VERSION"
  curl -L -o- "$URL" | tar -xJ -C "$INSTALL_DIR"/"$NODE_VERSION" --strip-components=1
fi

# if [[ "$COMMAND" = "search" ]]; then
#   echo ">>> search"
# fi
#
# if [[ "$COMMAND" = "list" ]]; then
#   echo ">>> list"
# fi
#
# if [[ "$COMMAND" = "use" ]]; then
#   echo ">>> use"
# fi
#
# if [[ "$COMMAND" = "remove" ]]; then
#   echo ">>> remove"
# fi
