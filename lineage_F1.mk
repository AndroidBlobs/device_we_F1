# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from F1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := we
PRODUCT_DEVICE := F1
PRODUCT_MANUFACTURER := we
PRODUCT_NAME := lineage_F1
PRODUCT_MODEL := F1

PRODUCT_GMS_CLIENTID_BASE := android-we
TARGET_VENDOR := we
TARGET_VENDOR_PRODUCT_NAME := F1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="F1-user 8.1.0 O11019 1538132684 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := WE/F1/F1:8.1.0/O11019/1538132684:user/release-keys
