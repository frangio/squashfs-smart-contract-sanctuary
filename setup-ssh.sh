#!/usr/bin/env bash

set -euo pipefail

ssh-keygen -f ~/.ssh/id_rsa -q -N ""
ssh-keyscan github.com
