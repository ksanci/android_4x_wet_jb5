## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := android_4x_wet_jb5

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/STAR/android_4x_wet_jb5/device_android_4x_wet_jb5.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := android_4x_wet_jb5
PRODUCT_NAME := cm_android_4x_wet_jb5
PRODUCT_BRAND := XK
PRODUCT_MODEL := W450
PRODUCT_MANUFACTURER := STAR
