#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/vsmart/casuarina

# Inherit from msm8953-common
$(call inherit-product, device/vsmart/msm8953-common/common.mk)

# Init script
PRODUCT_PACKAGES += \
    init.casuarina.nfc.rc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    Tag

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay-lineage

# EvolutionX overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-evolution

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Wi-Fi Overlay
PRODUCT_PACKAGES += \
    WifiOverlayV430

# EvoX flags
TARGET_ENABLE_BLUR := false
#WITH_GMS := true
TARGET_USE_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_SUPPORT_BOOT_ANIMATIONS := true

# Inherit vendor makefiles
$(call inherit-product, vendor/vsmart/casuarina/casuarina-vendor.mk)
