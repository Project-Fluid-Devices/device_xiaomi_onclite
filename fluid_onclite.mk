#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/raven/raven:12/SD1A.210817.036/7805805:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys" \
    PRODUCT_NAME=raven

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Official
FLUID_BUILD_TYPE := OFFICIAL

