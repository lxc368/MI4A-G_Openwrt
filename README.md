# 刷机前记得通过telnet备份EEPROM和全部分区文件


# 只有zerotier的小米路由器4A千兆版Openwrt构建
什么都没有，就是换用了[Argon主题](https://github.com/jerrykuku/luci-theme-argon)，并且加入了TTYD、IPV6helper和[zerotier](https://www.zerotier.com/)。其中zerotier作为路由器远程控制通道使用。
如果有特殊需求 可以使用[Shellclash](https://github.com/juewuy/ShellClash/blob/master/README_CN.md)。


### 不要安装openclash、passwall、vssr，太卡了，CPU撑不住


点开右边连接中的Assets，找到[openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin](https://github.com/lxc368/MI4A-G_Openwrt/releases)，在breed中与你备份好的EEPROM一块刷入即可。

装完之后还剩7M的空闲空间，按需安装插件吧
