# Release name
PRODUCT_RELEASE_NAME := v4s

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/gionee/v4s/device_v4s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v4s
PRODUCT_NAME := cm_v4s
PRODUCT_BRAND := gionee
PRODUCT_MODEL := v4s
PRODUCT_MANUFACTURER := gionee
