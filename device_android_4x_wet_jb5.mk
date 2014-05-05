$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/STAR/android_4x_wet_jb5/android_4x_wet_jb5-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/STAR/android_4x_wet_jb5/overlay

LOCAL_PATH := device/STAR/android_4x_wet_jb5
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_RECOVERY_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/STAR/android_4x_wet_jb5/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/STAR/android_4x_wet_jb5/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/STAR/android_4x_wet_jb5/recovery/fstab:recovery/root/fstab \
    device/STAR/android_4x_wet_jb5/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/STAR/android_4x_wet_jb5/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/STAR/android_4x_wet_jb5/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/STAR/android_4x_wet_jb5/recovery/ueventd.rc:recovery/root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_android_4x_wet_jb5
PRODUCT_DEVICE := android_4x_wet_jb5
