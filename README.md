# GDOCK
 自动从lean的lede源码clone并生成竞斗云固件 
 
 **上游源码大幅度更新，可能会出现许多的bug。本项目仅仅是自动拉取源码编译，反馈固件bug请到源码仓库提交issue**

=============================================

本仓库每天UTC 20:00自动拉取lean最新源码编译，可直接在action中下载最新固件

固件具体更新内容移步到 https://github.com/coolsnowwolf/lede 查看

固件的默认管理地址为`192.168.5.1`，密码默认`password`

=============================================

如果你只想使用固件,可以在本项目的actions下下载最新编译的固件.

<p>
    <a href="https://github.com/Cathgao/GDOCK-Cath/actions">
            <img src="https://github.com/Cathgao/GDOCK-Cath/workflows/Build%20G-DOCK/badge.svg"/>
        </a>
</p>

将本项目fork到自己账号下,进行以下操作即可得到专属定制固件

1.diy.sh
可以编辑自定义和修改的脚本

2.gdockfull128.config
编辑自定义配置文件.

3.以上修改完后push一下,即可自动编译固件

==============================================

![](/screenshots/r619ac.png)

==============================================

部分脚本内容参考以下项目特此感谢:

https://github.com/P3TERX/Actions-OpenWrt/

https://github.com/ljk4160/GDOCK
