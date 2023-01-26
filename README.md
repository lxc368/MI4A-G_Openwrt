# 刷机前记得通过telnet备份EEPROM和全部分区文件


# 小米路由器4A千兆版Openwrt云编译构建 另有[Padavan-4.4](https://github.com/lxc368/XIAOMI_MI-R4A_Padavan_Kernel_4.4)云编译构建，支持闭源无线驱动和HWNAT，欢迎使用

默认SSID：MIWIFI  默认密码：password  无管理员密码，可以直接点击登录进入路由器后台。

构建配置如下：
```
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_xiaomi_mi-router-4a-gigabit=y
CONFIG_COREMARK_NUMBER_OF_THREADS=4
# CONFIG_JSON_OVERVIEW_IMAGE_INFO is not set
# CONFIG_LIBCURL_NGHTTP2 is not set
CONFIG_PACKAGE_6in4=y
# CONFIG_PACKAGE_ddns-scripts is not set
# CONFIG_PACKAGE_ddns-scripts_aliyun is not set
# CONFIG_PACKAGE_ddns-scripts_dnspod is not set
# CONFIG_PACKAGE_dns2socks is not set
# CONFIG_PACKAGE_dns2tcp is not set
# CONFIG_PACKAGE_dnsmasq_full_dhcpv6 is not set
CONFIG_PACKAGE_ip6tables=y
CONFIG_PACKAGE_iptables-mod-conntrack-extra=y
CONFIG_PACKAGE_iptables-mod-iprange=y
CONFIG_PACKAGE_iptables-mod-socket=y
CONFIG_PACKAGE_ipv6helper=y
CONFIG_PACKAGE_kmod-ip6tables=y
CONFIG_PACKAGE_kmod-ipt-conntrack-extra=y
CONFIG_PACKAGE_kmod-ipt-iprange=y
CONFIG_PACKAGE_kmod-ipt-nat6=y
CONFIG_PACKAGE_kmod-ipt-socket=y
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel4=y
# CONFIG_PACKAGE_kmod-mtk-hnat is not set
# CONFIG_PACKAGE_kmod-nf-conntrack-netlink is not set
CONFIG_PACKAGE_kmod-nf-ipt6=y
CONFIG_PACKAGE_kmod-nf-log6=y
CONFIG_PACKAGE_kmod-nf-nat6=y
CONFIG_PACKAGE_kmod-nf-reject6=y
CONFIG_PACKAGE_kmod-nf-socket=y
CONFIG_PACKAGE_kmod-sit=y
CONFIG_PACKAGE_libmaxminddb=y
# CONFIG_PACKAGE_libmbedtls is not set
CONFIG_PACKAGE_libminiupnpc=y
CONFIG_PACKAGE_libnatpmp=y
# CONFIG_PACKAGE_libnghttp2 is not set
CONFIG_PACKAGE_libstdcpp=y
CONFIG_PACKAGE_lua-maxminddb=y
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
CONFIG_PACKAGE_luci-app-advanced=y
CONFIG_PACKAGE_luci-app-argonne-config=y
CONFIG_PACKAGE_luci-app-bypass=y
# CONFIG_PACKAGE_luci-app-bypass_INCLUDE_Socks_Server is not set
# CONFIG_PACKAGE_luci-app-bypass_INCLUDE_Xray is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
CONFIG_PACKAGE_luci-app-guest-wifi=y
# CONFIG_PACKAGE_luci-app-nlbwmon is not set
CONFIG_PACKAGE_luci-app-ramfree=y
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui is not set
CONFIG_PACKAGE_luci-app-smartdns=y
# CONFIG_PACKAGE_luci-app-ssr-plus is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_PDNSD is not set
# CONFIG_PACKAGE_luci-app-vlmcsd is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
CONFIG_PACKAGE_luci-app-zerotier=y
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_luci-i18n-argonne-config-zh-cn=y
CONFIG_PACKAGE_luci-i18n-bypass-zh-cn=y
CONFIG_PACKAGE_luci-i18n-guest-wifi-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ramfree-zh-cn=y
CONFIG_PACKAGE_luci-i18n-smartdns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-zerotier-zh-cn=y
CONFIG_PACKAGE_luci-proto-ipv6=y
CONFIG_PACKAGE_luci-theme-argonne=y
# CONFIG_PACKAGE_microsocks is not set
# CONFIG_PACKAGE_nlbwmon is not set
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcp6c_ext_cer_id=0
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_odhcpd_ipv6only_ext_cer_id=0
# CONFIG_PACKAGE_openssl-util is not set
# CONFIG_PACKAGE_pdnsd-alt is not set
# CONFIG_PACKAGE_procd-ujail is not set
# CONFIG_PACKAGE_resolveip is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-local is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-redir is not set
# CONFIG_PACKAGE_shadowsocksr-libev-ssr-check is not set
# CONFIG_PACKAGE_simple-obfs-client is not set
CONFIG_PACKAGE_smartdns=y
CONFIG_PACKAGE_unzip=y
# CONFIG_PACKAGE_urngd is not set
# CONFIG_PACKAGE_vlmcsd is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
# CONFIG_PACKAGE_wget-ssl is not set
CONFIG_PACKAGE_zerotier=y

```
如果有特殊需求，可以使用[Shellclash](https://github.com/juewuy/ShellClash/blob/master/README_CN.md)。


点开右边链接中的Assets，找到[openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin](https://github.com/lxc368/MI4A-G_Openwrt/releases)，在breed中与你备份好的EEPROM一块刷入即可。

