#!/bin/bash

set -ex

TTN_LW_STACK=${TTN_LW_STACK:-ttn-lw-stack}
DIR=`dirname $(realpath $0)`

if [ ! -d "${DIR}/lorawan-devices" ]; then
    git clone https://github.com/TheThingsNetwork/lorawan-devices --depth 1
fi

pushd lorawan-devices && git pull && popd
${TTN_LW_STACK} dr create-package --output package.zip --source lorawan-devices --overwrite

