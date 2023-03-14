#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改默认IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# 恢复首页显示
sed -i 's/^.*mwan.htm.*/#&/' package/lean/default-settings/files/zzz-default-settings
sed -i 's/^.*upnp.htm.*/#&/' package/lean/default-settings/files/zzz-default-settings
sed -i 's/^.*ddns.htm.*/#&/' package/lean/default-settings/files/zzz-default-settings


# 日期
sed -i 's/os.date(/&"%Y-%m-%d %H:%M:%S"/' package/lean/autocore/files/x86/index.htm

# 把密码改成空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings



#恢复主机型号
#sed -i 's/(dmesg | grep .*/{a}${b}${c}${d}${e}${f}/g' package/lean/autocore/files/x86/autocore
#sed -i '/h=${g}.*/d' package/lean/autocore/files/x86/autocore
#sed -i 's/echo $h/echo $g/g' package/lean/autocore/files/x86/autocore



#干掉跑分程序
sed -i 's, <%=luci.sys.exec("cat /etc/bench.log") or " "%><,<,g'  package/lean/autocore/files/x86/index.htm
rm -rf ./feeds/packages/utils/coremark

##干掉wan6和ula_prefix
sed -i "/uci commit fstab/a\uci delete network.wan6\nuci delete network.globals.ula_prefix\nuci set dhcp.lan.start=\'50\'\nuci set network.lan.ip6assign=\'64\'\nuci set network.globals.packet_steering=0\nuci commit network" package/lean/default-settings/files/zzz-default-settings

