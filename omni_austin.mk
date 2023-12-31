#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from austin device
$(call inherit-product, device/motorola/austin/device.mk)

PRODUCT_DEVICE := austin
PRODUCT_NAME := omni_austin
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G (2022)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="austin_g-user 12 S2SAS32.1-54-8-4 e31ed release-keys"

BUILD_FINGERPRINT := motorola/austin_g/austin:12/S2SAS32.1-54-8-4/e31ed:user/release-keys
