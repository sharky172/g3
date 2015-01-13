#
# Makefile for f180
#

PORT_PRODUCT := f400_rogue

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_G3.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-priv-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-removed-priv-apps := 

local-miui-modified-apps := MiuiVideo Settings Mms ThemeManager MiuiSystemUI

local-miui-modified-priv-apps := 

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are XHDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/bin/installd $(ZIP_DIR)/system/bin/installd
	cp other/bin/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	cp other/lib/libsqlite.so $(ZIP_DIR)/system/lib/libsqlite.so
	cp other/ContactsProvider.apk $(ZIP_DIR)/system/app/ContactsProvider.apk
	cp other/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip
	cp other/TelephonyProvider.apk $(ZIP_DIR)/system/app/TelephonyProvider.apk
	cp other/MediaProvider.apk $(ZIP_DIR)/system/priv-app/MediaProvider.apk
	cp other/Phone.apk $(ZIP_DIR)/system/priv-app/Phone.apk


out/framework2.jar : out/framework.jar
