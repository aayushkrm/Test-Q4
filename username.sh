#!/bin/bash

# parse arguments
file=""
uid=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    -f)
      file="$2"
      shift
      shift
      ;;
    *)
      uid="$1"
      shift
      ;;
  esac
done

# check arguments
if [[ -z "$uid" ]]; then
  echo "Error: missing UID" >&2
  exit 2
fi
if [[ -z "$file" ]]; then
  file="/etc/passwd"
fi

# search for the user in the file
user=$(grep ":$uid:" "$file" | cut -d ':' -f1)

# check if the user was found
if [[ -z "$user" ]]; then
  echo "Error: user with UID $uid not found in file $file" >&2
  exit 1
fi

# print the user's login and exit successfully
echo "$user"
exit 0

