# Inherit device configuration for GT_P7510.
$(call inherit-product, device/samsung/GT_P7510/GT_P7510.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_GT_P7510
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := GT_P7510
PRODUCT_MODEL := GT_P7510
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_ID=HTJ85B BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:3.2/HTJ85B/UEKMM:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 3.2 HTJ85B UEKMM release-keys"

# Release name and versioning
PRODUCT_VERSION_DEVICE_SPECIFIC :=
