#!/bin/bash
########################
# Author: Waltz        #
########################

# Check if we are running as root
[[ "$UID" != "0" ]] && echo "install.sh need root permissions"
[[ "$UID" != "0" ]] && exit 0

# Check for directory
[[ -z "$@" ]] && echo "You need to enter a path, e.g /usr/local/bin"
[[ -z "$@" ]] && exit 0

# Check if directory is valid
[[ -d "$@" ]] || echo "Invalid directory"
[[ -d "$@" ]] || exit 0

# Soft link to path
ln -s "$(pwd)/music" "$@/music"
ln -s "$(pwd)/deps/search/search" "$@/search"

# Give executable permissions
chmod +x /usr/local/bin/music
chmod +x /usr/local/bin/search
