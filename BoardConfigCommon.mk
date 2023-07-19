#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common Path
COMMON_PATH := device/huawei/msm8953-common

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci slub_min_objects=12 unmovable_isolate1=2:192M,3:224M,4:256M unmovable_isolate2=2:64M,3:80M,4:80M androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --second_offset 0x00e88000 --tags_offset 0x00000100

# Kernel Source
TARGET_KERNEL_CONFIG := merge_msm8953_64_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/msm8953

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096 # blockdev --getbsz /dev/block/mmcblk0

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/configs/init/fstab.qcom

# Platform
TARGET_BOARD_PLATFORM := msm8953
ARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Root
BOARD_ROOT_EXTRA_FOLDERS += \
    3rdmodem \
    3rdmodemnvm \
    3rdmodemnvmbkp \
    cust \
    mnvm2:0 \
    modem_fw \
    modem_log \
    patch_hw \
    sec_storage \
    splash2 \
    version

# Vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor