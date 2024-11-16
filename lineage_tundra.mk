#
# Copyright (C) 2024 The LineageOS Android Project 
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common lineage configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := lineage_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tundra_g-user 15 AP3A.241111.008 ee9a1f release-keys" \
    DeviceProduct=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:15/AP3A.241111.008/ee9a1f:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device Status
LINEAGE_BUILD_TYPE := UNOFFICIAL

# Device Identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
   LINEAGE_MAINTAINER="HotaruOs" \
   LINEAGE_CHIPSET="SD888+"

# Gapps:
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_CORE_GMS := true

# Maintainer Name
LINEAGE_MAINTAINER := "HotaruOs"

# UDFPS
TARGET_HAS_UDFPS := true
