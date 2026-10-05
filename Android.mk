#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# lineage-20.0 has no install_symlink module type, so the symlink is declared
# here as a prebuilt module whose post-install step replaces the installed
# file with the real symlink.

include $(CLEAR_VARS)
LOCAL_MODULE := vendor_firmware_wlan_prima_WCNSS_qcom_wlan_nv_bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware/wlan/prima
LOCAL_MODULE_STEM := WCNSS_qcom_wlan_nv.bin
LOCAL_SRC_FILES := Android.mk
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/etc/wifi/WCNSS_qcom_wlan_nv_v430mp_v1.5.bin $(LOCAL_INSTALLED_MODULE)
include $(BUILD_PREBUILT)
