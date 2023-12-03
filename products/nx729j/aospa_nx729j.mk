#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_nx729j,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nubia/nx729j/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := nubia
PRODUCT_DEVICE := nx729j
PRODUCT_MANUFACTURER := nubia
PRODUCT_MODEL := NX729J
PRODUCT_NAME := aospa_nx729j

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=nx729j \
    TARGET_DEVICE=nx729j

PRODUCT_GMS_CLIENTID_BASE := android-zte

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

endif
