#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

###添加追新软件包
#echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default

# Add a feed source 添加额外软件包
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git netspeedtest https://github.com/sirpdboy/netspeedtest' >>feeds.conf.default
#echo 'src-git ddnsgo https://github.com/sirpdboy/luci-app-ddns-go.git' >> feeds.conf.default
#echo 'src-git lucky https://github.com/gdy666/luci-app-lucky.git' >> feeds.conf.default
#echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci-smartdns-new-version' >>feeds.conf.default
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
#echo 'src-git smartdns_luci https://github.com/pymumu/luci-app-smartdns.git;lede' >>feeds.conf.default
#echo 'src-git smartdns https://github.com/pymumu/smartdns.git;master' >>feeds.conf.default
#echo 'src-git kenzo  https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#sed -i '1i src-git haibo https://github.com/haiibo/openwrt-packages' feeds.conf.default
echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default
