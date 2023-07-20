#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common Path
COMMON_PATH := device/huawei/msm8953-common

# Graphics
PRODUCT_PACKAGES += \
￼    libion

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.huawei.audio.rc \
    init.huawei.camera.rc \
    init.huawei.device.rc \
    init.huawei.lcd.rc \
    init.huawei.os.rc \
    init.huawei.power.rc \
    init.huawei.security.rc \
    init.huawei.target.rc \
    init.huawei.wcnss.rc \
    init.hw.debug.rc \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.fm.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.rc
    
# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml
