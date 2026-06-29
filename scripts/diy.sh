#!/bin/bash

# 修改默认 LAN IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/lean/default-settings/files/zzz-default-settings 2>/dev/null || true

# 修改主机名
sed -i 's/OpenWrt/JDC-Athena/g' package/base-files/files/bin/config_generate 2>/dev/null || true

# 设置时区为上海
sed -i "s/'UTC'/'CST-8'/g" package/base-files/files/bin/config_generate
