# 刷机前记得通过telnet备份EEPROM和全部分区文件


# 小米路由器4A千兆版Openwrt云编译构建

内置插件:DDNS，Wireguard，WOL网络唤醒，UPnP

默认SSID：MIWIFI  默认密码：password  无管理员密码，可以直接点击登录进入路由器后台。

如果有特殊需求，推荐使用[Shellclash](https://github.com/juewuy/ShellClash/blob/master/README_CN.md)。

点开右边链接中的Assets，找到[openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin](https://github.com/lxc368/MI4A-G_Openwrt/releases)，在breed中与你备份好的EEPROM一块刷入即可。
