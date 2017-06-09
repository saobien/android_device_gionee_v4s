$(call inherit-product-if-exists, vendor/gionee/v4s/v4s-vendor.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Full language pack for device
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/gionee/v4s

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_v4s
PRODUCT_DEVICE := v4s

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Specifying timezone
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.timezone=Asia/Kolkata

# Lights
PRODUCT_PACKAGES += \
    lights.mt6582

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6582 \
    audio_policy.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

# GSM
PRODUCT_PACKAGES += \
    gsm0710muxd \
    gsm0710muxdmd2

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermalstress.cfg:system/etc/.tp/thermalstress.cfg

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root//sbin/busybox:root/sbin/busybox \
    $(LOCAL_PATH)/rootdir/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6582:root/fstab.mt6582 \
    $(LOCAL_PATH)/rootdir/root/init.recovery.mt6582.rc:root/init.recovery.mt6582.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6582.rc:root/init.mt6582.rc \
    $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/root/init.ssd.rc:root/init.ssd.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/root/init.nvdata.rc:root/init.nvdata.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6582.power.rc:root/init.mt6582.power.rc \
    $(LOCAL_PATH)/rootdir/root/init.aee.rc:root/init.aee.rc \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	ro.debuggable=1
	
# Torch
PRODUCT_PACKAGES += \
    Torch

# Camera
PRODUCT_PACKAGES += \
    Snap

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    libfmmt6620 \
    libfmmt6628 \
    libfmmt6627 \
    libfmmt6630 \
    libfmcust \
    libmtkplayer

# Set default player to AwesomePlayer
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.media.use-awesome=true
$(call inherit-product, build/target/product/full.mk)
