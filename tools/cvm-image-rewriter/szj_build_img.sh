#!/bin/bash

# Reference: https://github.com/cc-api/confidential-cloud-native-primitives/blob/main/.github/workflows/image-rewriter.yaml
wget https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img

mkdir -p ./pre-stage/artifacts
wget -r -np --user zhongjie https://ubit-artifactory-or.intel.com/artifactory/linuxmvpstacks-or-local/idc/2023ww45/mvp-tdx-stack-guest-ubuntu-22.04/
mv ubit-artifactory-or.intel.com/artifactory/linuxmvpstacks-or-local/idc/2023ww45/mvp-tdx-stack-guest-ubuntu-22.04 pre-stage/artifacts/
export CVM_TDX_GUEST_REPO=/home/zhongjie/vm/img/ccnp/confidential-cloud-native-primitives/tools/cvm-image-rewriter/pre-stage/artifacts/mvp-tdx-stack-guest-ubuntu-22.04/
sudo ./run.sh -i jammy-server-cloudimg-amd64.img -t 6 -n

