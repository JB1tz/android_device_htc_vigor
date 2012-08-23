$(call inherit-product, device/htc/vigor/vigor.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor TARGET_DEVICE=vigor BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/372320.12:user/release-keys" PRIVATE_BUILD_DESC="3.14.605.12 CL372320 release-keys"

TARGET_BOOTANIMATION_NAME := vertical-720

# Release name
PRODUCT_NAME := cm_vigor
PRODUCT_DEVICE := vigor
