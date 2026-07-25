#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Bliss configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, vendor/lineage/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

BLISS_BUILDTYPE := OFFICIAL

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := sky_global
PRODUCT_SYSTEM_DEVICE := sky

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sky_global-user 12 SKQ1.230118.001 OS2.0.201.0.VMWMIXM release-keys" \
    BuildFingerprint=Redmi/sky/sky:12/SKQ1.230118.001/OS2.0.201.0.VMWMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)


# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
