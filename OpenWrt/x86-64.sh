#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-x86-64.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/x86/64/openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-x86-64.Linux-x86_64 || exit

make image PROFILE=generic PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch"
