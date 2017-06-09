# Release name
PRODUCT_RELEASE_NAME := v4s

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/gionee/v4s/device_v4s.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v4s
PRODUCT_NAME := cm_v4s
PRODUCT_BRAND := gionee
PRODUCT_MODEL := v4s
PRODUCT_MANUFACTURER := gionee

PRODUCT_GMS_CLIENTID_BASE := android-mediatek
