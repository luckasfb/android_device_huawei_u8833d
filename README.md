#######forked from josalaito/android_device_huawei_u8833

###Device configuration for Huawei Ascend Y300-0000/U8833D,G510-0010/U8951D

######Thanks to this amazing people for make it possible
###---------------
######ivan19871002 for the amazing initial repos.
##########Dazzozo for the commits related to system.prop and to the ramdisk changes to going to jellybean.
####Kra1o5 and Eloimuns for the u8951 repos and some ideas and commits.
#####ShenduOS for the U8825D repos, a inspiration place for me.


######How to build (怎样编译?这个问题网上有许多教程可参考.从安装ubuntu到环境配置都有的)



#####Step 1:(To install, initialize, and configure Repo, follow these steps.Make sure you have a bin/ directory in your home directory, and that it is included in your path)

mkdir ~/bin
##
export PATH=${PATH}:~/bin

#####(Download the Repo script and ensure it is executable:)
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo
##
chmod a+x ~/bin/repo

######More about "Setting up a Build Environment" http://source.android.com/source/initializing.html




###########Step 2:(Create an empty directory to hold your working files, please note that Linux’s files system is case-sensitive so uppercase letters matter. Give it any name you like, we’ve used "cm" for a quick example)

mkdir ~/cm
##
cd cm

########初始化 "repo" and set CyanogenMod version to jellybean (cm-10 android 4.1.2) 设置下载的cm版本为cm-10,安卓版本是4.1.2
repo init -u git://github.com/CyanogenMod/android.git -b jellybean




########Step 3:(Setup download brunch.includ CyanogenMod jellybean,device source for U8833D,vendor for U8833D and kernel.)

gedit .repo/local_manifest.xml

###########Then copy this code to local_manifest.xml,and save it.(将以下代码复制到local_manifest.xml中保存,首先要删掉所有"#-"符号,再保存.接着进行下一步操作)

#####Code:代码:

<?xml version="1.0" encoding="UTF-8"?>
########网页上不显示,下载后再看
<manifest>
########------------
<remove-project name="CyanogenMod/android_hardware_qcom_display" />
<project name="xjljian/android_hardware_qcom_display" path="hardware/qcom/display" remote="github" revision="jellybean" />
#######-----------
<project name="xjljian/android_device_huawei_y300-0000_U8833D_new" path="device/huawei/U8833D" remote="github" revision="jellybean" />
<project name="xjljian/android_kernel_huawei_msm8x25" path="kernel/huawei/msm8x25" remote="github" revision="cm-10.1" />
#########-----------
<project name="xjljian/proprietary_vendor_huawei_U8833D" path="vendor/huawei/" remote="github" revision="jellybean" />
<project name="CyanogenMod/android_hardware_atheros_wlan" path="hardware/atheros/wlan" remote="github" revision="jellybean" />
########-----------
</manifest>
########----------

#####Code end,结束

######Step 4:(Sync and build:)
repo sync -j4       这里开始同步源码

. build/envsetup.sh       源码同步结束,在源码树目录执行该命令(在执行该条命令前要cd定位到device/huawei/U8833D目录执行./extract-files.sh命令.

brunch U8833D -j4          开始编译.
