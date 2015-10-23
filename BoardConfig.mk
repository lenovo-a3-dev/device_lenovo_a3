# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/lenovo/s6

-include vendor/lenovo/s6/BoardConfigVendor.mk

# board
TARGET_BOOTLOADER_BOARD_NAME := s6000_prc_3gfull
TARGET_BOARD_PLATFORM := mt6589
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

TARGET_OTA_ASSERT_DEVICE := s6,s6000_prc_3gfull,A3000,s6000

# blob hacks
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS -DMTK_G_MT6589
COMMON_GLOBAL_CPPFLAGS += -DMTK_G_MT6589
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true
BOARD_NEEDS_OLD_HWC_API := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# power
TARGET_POWERHAL_VARIANT := cm

# boot
TARGET_NO_BOOTLOADER := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/boot.mk

# EGL settings
BOARD_EGL_CFG := device/lenovo/s6/config/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 629145600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16116613120
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 48307896320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 629145600
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# recovery
TARGET_NO_SEPARATE_RECOVERY := true
RECOVERY_NAME := Lenovo IdeaTab S6000H Recovery
TARGET_COMMON_NAME := Lenovo IdeaTab S6000H
#BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/root/fstab.mt8389
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_MTK_LAYOUT := true
BOARD_MTK_BOOT_LABEL := "/bootimg"
BOARD_HAS_LOW_RESOLUTION := true
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# TWRP
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/mt6320-battery/power_supply/battery
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TW_THEME := landscape_mdpi

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mtk
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_mtk

# dummy FW paths to trigger libhardware_legacy/wifi FW switch through hald
WIFI_DRIVER_FW_PATH_AP := "AP"
WIFI_DRIVER_FW_PATH_STA := "STA"
WIFI_DRIVER_FW_PATH_P2P := "STA+P2P"

# telephony
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# nvram permission fix
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
