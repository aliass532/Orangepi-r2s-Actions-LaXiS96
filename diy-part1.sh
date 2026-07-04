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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
echo 'src-git qmodem https://github.com/FUjr/QModem.git;main' >> feeds.conf.default
echo 'src-git mt5700webui https://github.com/aliass532/mt5700webui-openwrt-server.git;main' >> feeds.conf.default

echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git^4c2967c6511274d82a0dd099cf91d361c311fb59' >> feeds.conf.default
echo 'src-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git^2be2586fe72f07024326f7e590f7c6de99aaf469' >> feeds.conf.default

#echo 'CONFIG_TCP_CONG_BBR=y' >> target/linux/ky/riscv64/config-6.6
#echo 'CONFIG_DEFAULT_TCP_CONG="bbr"' >> target/linux/ky/riscv64/config-6.6
