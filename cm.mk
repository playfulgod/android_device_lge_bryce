## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := LG-$(PRODUCT_MODEL)-ICS

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bryce/bryce.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bryce
PRODUCT_NAME := cm_bryce_$(SUB_MODEL)
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-$(SUB_MODEL)
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=bryce PRODUCT_NAME=bryce BUILD_ID=LG-$(SUB_MODEL)-ICS BUILD_DISPLAY_ID=LG-$(SUB_MODEL)-ICS BUILD_FINGERPRINT="MetroPCS/lge_bryce/$(SUB_MODEL):4.0.3/ICS/ZVB.422A0D75:user/release-keys" PRIVATE_BUILD_DESC="lge_bryce-user 4.0.3 ICS release-keys"
