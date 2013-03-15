#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/pantech/ef65l/ef65l-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/pantech/ef65l/overlay

PRODUCT_LOCALES := zh_CN zh_TW en_US ko_KR

# Ramdisk
PRODUCT_COPY_FILES += \
    device/pantech/ef65l/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/pantech/ef65l/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/pantech/ef65l/ramdisk/init.target.rc:root/init.target.rc \
    device/pantech/ef65l/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/pantech/ef65l/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/pantech/ef65l/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/pantech/ef65l/ramdisk/block_image.rle:root/block_image.rle \
    device/pantech/ef65l/ramdisk/block_image1.rle:root/block_image1.rle \
    device/pantech/ef65l/ramdisk/block_image2.rle:root/block_image2.rle \
    device/pantech/ef65l/ramdisk/drm_image.rle:root/drm_image.rle \
    device/pantech/ef65l/ramdisk/initlogo.rle:root/initlogo.rle \
    device/pantech/ef65l/ramdisk/logo2.rle:root/logo2.rle \
    device/pantech/ef65l/ramdisk/logo3.rle:root/logo3.rle \
    device/pantech/ef65l/ramdisk/reboot.rle:root/reboot.rle \
#    device/pantech/ef65l/ramdisk/init:root/init

PRODUCT_COPY_FILES += \
    device/pantech/ef65l/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/pantech/ef65l/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
    device/pantech/ef65l/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
    device/pantech/ef65l/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/pantech/ef65l/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    device/pantech/ef65l/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/pantech/ef65l/modules/ksapi.ko:system/lib/modules/ksapi.ko \
    device/pantech/ef65l/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/pantech/ef65l/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/pantech/ef65l/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/pantech/ef65l/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
    device/pantech/ef65l/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko \
    device/pantech/ef65l/modules/qce.ko:system/lib/modules/qce.ko \
    device/pantech/ef65l/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    device/pantech/ef65l/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    device/pantech/ef65l/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
    device/pantech/ef65l/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
 
# Input device config
PRODUCT_COPY_FILES += \
    device/pantech/ef65l/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc
       
# Vold configuration
PRODUCT_COPY_FILES += \
    device/pantech/ef65l/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    device/pantech/ef65l/configs/thermald.conf:/system/etc/thermald.conf
    
# patch for Operatorname
PRODUCT_COPY_FILES += \
    device/pantech/ef65l/configs/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so

## Common properties    
#PRODUCT_PROPERTY_OVERRIDES += \   
#    net.bt.name=IM-A820L

# Inherit from msm8660-common
$(call inherit-product, device/pantech/msm8660-common/msm8660.mk)

$(call inherit-product-if-exists, vendor/pantech/ef65l/ef65l-vendor.mk)
