#!/usr/bin/env bash

set -euo pipefail

chains=(arbitrum avalanche bsc celo ethereum fantom optimism polygon tron)

for c in ${chains[@]}; do
  git clone --depth=1 https://x-access-token:$GITHUB_TOKEN@github.com/tintinweb/smart-contract-sanctuary-$c.git $c
  mksquashfs $c smart-contract-sanctuary.sqsh -comp lzo -keep-as-directory -wildcards -e '... .git'
  rm -rf $c
done
