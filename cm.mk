$(call inherit-product, device/pantech/ef65l/full_ef65l.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=IM-A820L TARGET_DEVICE=IM-A820L BUILD_FINGERPRINT="PANTECH/IM-A820L/IM-A820L:4.1.2/JZO54K/217A:user/release-keys" PRIVATE_BUILD_DESC="IM-A820L-user 4.1.2 JZO54K 217A release-keys"

TARGET_BOOTANIMATION_NAME := 800

PRODUCT_NAME := cm_ef65l
PRODUCT_DEVICE := ef65l

