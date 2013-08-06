# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/U8833D/U8833D.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_U8833D
PRODUCT_DEVICE := U8833D
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI U8833D
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8833D

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=U8833D \
	BUILD_FINGERPRINT=huawei/U8833D:4.1.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160
