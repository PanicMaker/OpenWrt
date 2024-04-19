#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i 's#src-git packages https://github.com/immortalwrt/packages.git;openwrt-23.05#src-git packages https://github.com/immortalwrt/packages.git#' feeds.conf.default
# sed -i 's#src-git luci https://github.com/immortalwrt/luci.git;openwrt-23.05#src-git luci https://github.com/immortalwrt/luci.git#' feeds.conf.default


sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
# echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
echo 'src-git opentopd https://github.com/sirpdboy/sirpdboy-package' >> feeds.conf.default
