#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# lineage-20.0 has no install_symlink module type, so the symlink is
# declared here as a plain make module.

include $(CLEAR_VARS)
LOCAL_MODULE := vendor_firmware_wlan_prima_WCNSS_qcom_wlan_nv_bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware/wlan/prima
LOCAL_MODULE_STEM := WCNSS_qcom_wlan_nv.bin
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(TARGET_OUT_VENDOR)/etc/wifi/WCNSS_qcom_wlan_nv_v430mp_v1.5.bin
	@mkdir -p $(dir $@)
	$(hide) ln -sf /vendor/etc/wifi/WCNSS_qcom_wlan_nv_v430mp_v1.5.bin $@
