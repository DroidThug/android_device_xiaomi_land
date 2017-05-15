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

DEVICE_PATH := device/xiaomi/land

# Define platform before including any common things
include $(DEVICE_PATH)/PlatformConfig.mk

# Inherit common ARM64 board fragments
include $(DEVICE_PATH)/board/common/arm64/architecture.mk
include $(DEVICE_PATH)/board/common/arm64/binder.mk

# Inherit common board fragments
include $(DEVICE_PATH)/board/common/bluetooth.mk
include $(DEVICE_PATH)/board/common/bootloader.mk
include $(DEVICE_PATH)/board/common/camera.mk
include $(DEVICE_PATH)/board/common/clang.mk
include $(DEVICE_PATH)/board/common/cpusets.mk
include $(DEVICE_PATH)/board/common/dexopt.mk
include $(DEVICE_PATH)/board/common/dlmalloc.mk
include $(DEVICE_PATH)/board/common/filesystem.mk
include $(DEVICE_PATH)/board/common/gps.mk
include $(DEVICE_PATH)/board/common/sepolicy.mk

# Inherit QCOM board fragments
include $(DEVICE_PATH)/board/qcom/bluetooth.mk
include $(DEVICE_PATH)/board/qcom/bootloader.mk
include $(DEVICE_PATH)/board/qcom/camera.mk
include $(DEVICE_PATH)/board/qcom/cne.mk
include $(DEVICE_PATH)/board/qcom/display.mk
include $(DEVICE_PATH)/board/qcom/encryption.mk
include $(DEVICE_PATH)/board/qcom/fm.mk
include $(DEVICE_PATH)/board/qcom/gps.mk
include $(DEVICE_PATH)/board/qcom/per-mgr.mk
include $(DEVICE_PATH)/board/qcom/platform.mk
include $(DEVICE_PATH)/board/qcom/power.mk
include $(DEVICE_PATH)/board/qcom/recovery.mk
include $(DEVICE_PATH)/board/qcom/ril.mk
include $(DEVICE_PATH)/board/qcom/sepolicy.mk
include $(DEVICE_PATH)/board/qcom/time.mk

# Inherit Cyanogen board fragments
include $(DEVICE_PATH)/board/cyanogen/hardware.mk

# Inherit device-specific board fragments
include $(DEVICE_PATH)/board/*.mk

# Inherit the proprietary files
-include vendor/xiaomi/land/BoardConfigVendor.mk
