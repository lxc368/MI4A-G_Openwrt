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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#rm -rf package/lean/luci-theme-argon
# 修改openwrt登陆地址,把下面的192.168.31.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把YOU-R4A修改你喜欢的就行（不能纯数字或者使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='R4A-G'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i 's/OpenWrt /编译时间 $(TZ=UTC-8 date "+%Y.%m.%d") @ lxc368 /g' package/lean/default-settings/files/zzz-default-settings

#更改主机型号，支持中文。 
sed -i "s/Xiaomi Mi Router 4A Gigabit Edition/小米4A千兆版路由器/g" target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit.dts

sed -i "s/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g" target/linux/ramips/Makefile

# 状态系统增加个性信息
sed -i "s/exit 0//" package/lean/default-settings/files/zzz-default-settings

echo "sed -i '/CPU usage/a\<tr><td width=\"33%\">关于</td><td><a class=\"author-blog\" href=\"https://github.com/lxc368/MI4A-G_Openwrt\">编译源地址</a></td></tr>' /usr/lib/lua/luci/view/admin_status/index.htm" >> package/lean/default-settings/files/zzz-default-settings
echo "sed -i '/关于/a\<tr><td width=\"33%\">天气</td><td><iframe width=\"640\" scrolling=\"no\" height=\"75\" frameborder=\"0\" allowtransparency=\"true\" src=\"https://i.tianqi.com?c=code&id=39&color=%23FF7600&icon=3&num=2&site=12\"></iframe></td></tr>' /usr/lib/lua/luci/view/admin_status/index.htm" >> package/lean/default-settings/files/zzz-default-settings

echo "" >> package/lean/default-settings/files/zzz-default-settings
echo "" >> package/lean/default-settings/files/zzz-default-settings
echo "exit 0" >> package/lean/default-settings/files/zzz-default-settings

#删除原默认主题
rm -rf package/lean/luci-theme-bootstrap
rm -rf package/lean/luci-theme-material
rm -rf package/lean/luci-theme-netgear
rm -rf package/kenzo/luci-theme-ifit

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
# sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-turboacc/po/zh-cn/turboacc.po

# 修改默认wifi名称ssid为MIWIFI
sed -i 's/ssid=OpenWrt/ssid=MIWIFI/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认wifi密码key为password
sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#使用sed 在第四行后添加新字
#sed -e 120a\set wireless.default_radio${devidx}.key=password package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\set wireless.default_radio${devidx}.key=password' package/kernel/mac80211/files/lib/wifi/mac80211.sh
