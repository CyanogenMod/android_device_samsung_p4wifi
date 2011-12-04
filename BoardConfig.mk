#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := false

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Use the non-open-source parts, if they're present
-include vendor/samsung/GT_P7510/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
#TARGET_HAVE_TEGRA_ERRATA_657451 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := 
BOARD_PAGE_SIZE := 2048

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := GT-P7510
#TARGET_BOARD_INFO_FILE := device/samsung/GT_P7510/board-info.txt

BOARD_EGL_CFG := device/samsung/GT_P7510/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

BOARD_USES_AUDIO_LEGACY := true

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_ventana

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/GT_P7510/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# override recovery init.rc
TARGET_RECOVERY_INITRC := device/samsung/GT_P7510/recovery/init.rc

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

# device-specific extensions to the updater binary
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_ventana
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/GT_P7510
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 606076928
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14472970240
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/GT_P7510/kernel

#TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAP_DRIVER := WEXT
BOARD_HOSTAP_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4330

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4330.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4330_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#BOARD_LIB_DUMPSTATE := libdumpstate.ventana

BOARD_USES_SECURE_SERVICES := true
