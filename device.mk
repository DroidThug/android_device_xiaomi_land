#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := $(LOCAL_PATH)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Include common product fragments
include $(LOCAL_PATH)/product/common/ant.mk
include $(LOCAL_PATH)/product/common/audio.mk
include $(LOCAL_PATH)/product/common/bluetooth.mk
include $(LOCAL_PATH)/product/common/bluetooth-le.mk
include $(LOCAL_PATH)/product/common/consumerir.mk
include $(LOCAL_PATH)/product/common/fingerprint.mk
include $(LOCAL_PATH)/product/common/fm.mk
include $(LOCAL_PATH)/product/common/gello.mk
include $(LOCAL_PATH)/product/common/gps.mk
include $(LOCAL_PATH)/product/common/lights.mk
include $(LOCAL_PATH)/product/common/media.mk
include $(LOCAL_PATH)/product/common/misc.mk
include $(LOCAL_PATH)/product/common/snap.mk
include $(LOCAL_PATH)/product/common/wifi.mk

# Include QCOM product fragments
include $(LOCAL_PATH)/product/qcom/audio.mk
include $(LOCAL_PATH)/product/qcom/camera.mk
include $(LOCAL_PATH)/product/qcom/cne.mk
include $(LOCAL_PATH)/product/qcom/display.mk
include $(LOCAL_PATH)/product/qcom/fm.mk
include $(LOCAL_PATH)/product/qcom/gps.mk
include $(LOCAL_PATH)/product/qcom/init.mk
include $(LOCAL_PATH)/product/qcom/media.mk
include $(LOCAL_PATH)/product/qcom/net.mk
include $(LOCAL_PATH)/product/qcom/power.mk
include $(LOCAL_PATH)/product/qcom/radio.mk
include $(LOCAL_PATH)/product/qcom/sensors.mk
include $(LOCAL_PATH)/product/qcom/usb.mk
include $(LOCAL_PATH)/product/qcom/wifi.mk

# Include Cyanogen product fragments
include $(LOCAL_PATH)/product/cyanogen/livedisplay.mk

# Include device-specific product fragments
include $(LOCAL_PATH)/product/*.mk

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/land/land-vendor.mk)
