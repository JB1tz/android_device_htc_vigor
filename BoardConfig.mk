# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from htc common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/vigor/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := vigor

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := vigor

# Kernel
BOARD_KERNEL_BASE      := 0x48800000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE   := console=ttyHSL3 androidboot.hardware=vigor no_console_suspend=1
TARGET_KERNEL_CONFIG   := vigor_aosp_defconfig
TARGET_KERNEL_SOURCE   := kernel/htc/vigor

# Display
TARGET_NO_HW_VSYNC := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# Use RGB565 for smoother bootanimation experience
TARGET_BOOTANIMATION_USE_RGB565 := true

# Audio
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Filesystem
BOARD_USES_MMCUTILS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1308621824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun%d/file

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := vigor
