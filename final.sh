#!/bin/bash
cd ~/rom

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 50G -F 0
ccache -o compression=true
ccache -z
export BUILD_USERNAME="flora"
export BUILD_HOSTNAME="lunar"
export WITHOUT_CHECK_API=true
lunch derp_tissot-userdebug
mka derp -j8
