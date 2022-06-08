echo '修改机器名称'
sed -i 's/OpenWrt/G-DOCK/g' package/base-files/files/bin/config_generate

echo '修改网关地址'
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

echo '修改时区'
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

echo '修改默认主题'
sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

#echo '去除默认bootstrap主题'
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap


#echo '删除旧版argon,链接新版'
#rm -rf ./package/lean/luci-theme-argon
#git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon ../diy/luci-theme-argon
#git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config ../diy/luci-app-argon-config
#ln -s ../../../luci-theme-argon ./package/lean/

echo '修改wifi名称'
sed -i 's/OpenWrt/G-DOCK/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

echo '修改banner'
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/

echo '下载ServerChan'
git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan

echo '下载AdGuard Home'
#svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome ../diy/luci-app-adguardhome 
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome ../package/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome ../package/adguardhome

#echo 'JD script'
#git clone https://github.com/Cathgao/luci-app-jd-dailybonus ../diy/luci-app-jd-dailybonus

echo '集成diy目录'
ln -s ../../diy ./package/openwrt-packages

#echo '首页增加CPU频率动态显示'
#cp -f ../diy/mod-index.htm ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

#echo 'enable magic'
#echo 'src-git helloworld https://github.com/fw876/helloworld'>>./feeds.conf.default
