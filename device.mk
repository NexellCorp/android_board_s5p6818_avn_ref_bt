################################################################################
# kernel
################################################################################
PRODUCT_COPY_FILES += \
    kernel/arch/arm/boot/uImage:kernel

################################################################################
# bootloader
################################################################################
PRODUCT_COPY_FILES += \
    u-boot/u-boot.bin:bootloader

################################################################################
# 2ndboot
################################################################################
PRODUCT_COPY_FILES += \
    device/nexell/s5p6818_avn_ref_bt/boot/2ndboot.bin:2ndbootloader

################################################################################
# init
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/init.s5p6818_avn_ref_bt.rc:root/init.s5p6818_avn_ref_bt.rc \
	device/nexell/s5p6818_avn_ref_bt/init.s5p6818_avn_ref_bt.usb.rc:root/init.s5p6818_avn_ref_bt.usb.rc \
	device/nexell/s5p6818_avn_ref_bt/init.recovery.s5p6818_avn_ref_bt.rc:root/init.recovery.s5p6818_avn_ref_bt.rc \
	device/nexell/s5p6818_avn_ref_bt/fstab.s5p6818_avn_ref_bt:root/fstab.s5p6818_avn_ref_bt \
	device/nexell/s5p6818_avn_ref_bt/ueventd.s5p6818_avn_ref_bt.rc:root/ueventd.s5p6818_avn_ref_bt.rc \
	device/nexell/s5p6818_avn_ref_bt/adj_lowmem.sh:root/adj_lowmem.sh \
	device/nexell/s5p6818_avn_ref_bt/start_deferred.sh:root/start_deferred.sh \
	device/nexell/s5p6818_avn_ref_bt/mon_snd.sh:root/mon_snd.sh \
	device/nexell/s5p6818_avn_ref_bt/factory_reset.sh:root/factory_reset.sh

################################################################################
# recovery 
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/busybox:busybox \
	device/nexell/s5p6818_avn_ref_bt/wipe_data.sh:wipe_data.sh \
	device/nexell/s5p6818_avn_ref_bt/wipe_cache.sh:wipe_cache.sh

################################################################################
# key
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/keypad_s5p6818_avn_ref_bt.kl:system/usr/keylayout/keypad_s5p6818_avn_ref_bt.kl \
	device/nexell/s5p6818_avn_ref_bt/keypad_s5p6818_avn_ref_bt.kcm:system/usr/keychars/keypad_s5p6818_avn_ref_bt.kcm

################################################################################
# touch
################################################################################
PRODUCT_COPY_FILES += \
    device/nexell/s5p6818_avn_ref_bt/tsc2007.idc:system/usr/idc/tsc2007.idc 

################################################################################
# camera
################################################################################
PRODUCT_PACKAGES += \
	camera.slsiap

################################################################################
# audio
################################################################################
# Dual Audio
EN_DUAL_AUDIO := true
EN_DUAL_AUDIO_PATH_SPDIF := true
ifeq ($(EN_DUAL_AUDIO),true)
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/libnxdualaudio/lib/libnxdualaudio.so:system/lib/libnxdualaudio.so
endif

# mixer paths
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/audio/tiny_hw.s5p6818_avn_ref_bt.xml:system/etc/tiny_hw.s5p6818_avn_ref_bt.xml
# audio policy configuration
ifeq ($(EN_DUAL_AUDIO_PATH_SPDIF),true)
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/audio/audio_policy_disable_spdif.conf:system/etc/audio_policy.conf
else
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/audio/audio_policy.conf:system/etc/audio_policy.conf
endif

################################################################################
# media 
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/media_codecs.xml:system/etc/media_codecs.xml \
	device/nexell/s5p6818_avn_ref_bt/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

################################################################################
# modules 
################################################################################
# ogl
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/library/libVR.so:system/lib/libVR.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libEGL_vr.so:system/lib/egl/libEGL_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv1_CM_vr.so:system/lib/egl/libGLESv1_CM_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv2_vr.so:system/lib/egl/libGLESv2_vr.so

################################################################################
# AVN application 
################################################################################
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/avn_monitor/nx_avn_monitor:system/bin/nx_avn_monitor

################################################################################
# RearCamera Application
################################################################################
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/NxRearCamService/NxRearCamService:system/bin/NxRearCamService

# ffmpeg libraries
EN_FFMPEG_EXTRACTOR := true
EN_FFMPEG_AUDIO_DEC := true
ifeq ($(EN_FFMPEG_EXTRACTOR),true)
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavcodec-2.1.4.so:system/lib/libavcodec-2.1.4.so    \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavdevice-2.1.4.so:system/lib/libavdevice-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavfilter-2.1.4.so:system/lib/libavfilter-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavformat-2.1.4.so:system/lib/libavformat-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavresample-2.1.4.so:system/lib/libavresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavutil-2.1.4.so:system/lib/libavutil-2.1.4.so      \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswresample-2.1.4.so:system/lib/libswresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswscale-2.1.4.so:system/lib/libswscale-2.1.4.so
endif

################################################################################
# wifi
################################################################################
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/modules/wlan.ko:/system/lib/modules/wlan.ko

################################################################################
# generic
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
	linux/platform/s5p6818/library/lib/libnxvidrc_android.so:system/lib/libnxvidrc_android.so

PRODUCT_COPY_FILES += \
	device/nexell/s5p6818_avn_ref_bt/busybox:system/bin/busybox \
	device/nexell/s5p6818_avn_ref_bt/memtester1-1:system/bin/memtester1-1 \
	device/nexell/s5p6818_avn_ref_bt/hwreg_cmd:system/bin/hwreg_cmd

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
#PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# 4330 delete nosdcard
# PRODUCT_CHARACTERISTICS := tablet,nosdcard
# PRODUCT_CHARACTERISTICS := tablet,usbstorage
PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
	device/nexell/s5p6818_avn_ref_bt/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
	dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

PRODUCT_PACKAGES += \
    TSCalibration   \
    libtslib    \
    inputraw    \
    pthres      \
    dejitter    \
    linear      \
    tscalib

PRODUCT_COPY_FILES += \
                    external/tslib/ts.conf:system/etc/ts.conf

# Product Property
# common
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.sf.lcd_density=160

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PACKAGES += \
    VolantisLayouts5p6818_avn_ref_bt

PRODUCT_PACKAGES += \
	rtw_fwloader

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=adb

# wifi
ifeq ($(BOARD_WIFI_VENDOR),realtek)
$(call inherit-product-if-exists, hardware/realtek/wlan/config/p2p_supplicant.mk)
endif

ifeq ($(BOARD_WIFI_VENDOR),broadcom)
WIFI_BAND := 802_11_BG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
endif

# call slsiap
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/slsiap.mk)

# Nexell Application
$(call inherit-product-if-exists, vendor/nexell/apps/nxvideoplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxaudioplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxlauncher.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxipodaudioplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxauxcontrol.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxsystemsetting.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxdualaudiotest.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/smartsync.mk)

# iOS iAP/Tethering
BOARD_USES_IOS_IAP_TETHERING := true
ifeq ($(BOARD_USES_IOS_IAP_TETHERING),true)
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/ios_tether/ios_tethering.mk)
endif
