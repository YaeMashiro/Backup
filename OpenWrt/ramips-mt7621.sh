#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-ramips-mt7621.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt7621/openwrt-imagebuilder-ramips-mt7621.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt7621.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-ramips-mt7621.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt7621.Linux-x86_64 || exit

make image PROFILE=totolink_x5000r PACKAGES="bottom dnsmasq-full htop ip-full iw-full luci luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=xiaomi_mi-router-3g PACKAGES="blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
