#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from selene device
$(call inherit-product, device/xiaomi/selene/device.mk)

# Inherit StatiX common configuration
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Device identifier
PRODUCT_NAME := statix_selene
PRODUCT_DEVICE := selene
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# StatiX flags
ENABLE_GAMETOOLS := true

PRODUCT_SYSTEM_NAME := selene_global
PRODUCT_SYSTEM_DEVICE := selene

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="selene-user 13 TP1A.220624.014 V14.0.3.0.TKUEUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := "Redmi/selene/selene:13/TP1A.220624.014/V14.0.3.0.TKUEUXM:user/release-keys"
