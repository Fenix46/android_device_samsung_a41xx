# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a41
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := aosp_a41
PRODUCT_MODEL := SM-A415F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a31
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a41xx-user 12 SP1A.210812.016 A415FXXU3DWD2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop [ro.build.fingerprint]
BUILD_FINGERPRINT := samsung/a41xx/a41:12/SP1A.210812.016/A415FXXU3DWD2:user/release-keys
