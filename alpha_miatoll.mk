#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := alpha_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miatoll_global-user 12 SKQ1.211019.001 V14.0.3.0.SJZMIXM release-keys" \
    BuildFingerprint=Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V14.0.3.0.SJZMIXM:user/release-keys

# Device config
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TORCH_STR_SUPPORTED := true

# Build Target
TARGET_BUILD_PACKAGE := 3
TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := ナマン
