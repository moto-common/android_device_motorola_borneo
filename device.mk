# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/motorola/borneo/rootdir

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=280

# Fingerprint
TARGET_USES_CHIPONE_FINGERPRINT := true
TARGET_USES_EGISTEC_FINGERPRINT := true
TARGET_USES_FPC_FINGERPRINT := true

# Model
PRODUCT_MODEL := moto g power 2021

# Props
PRODUCT_COPY_FILES += \
    device/motorola/borneo/props/build_borneo.prop:$(TARGET_COPY_OUT_VENDOR)/build_borneo.prop \
    device/motorola/borneo/props/build_cebu.prop:$(TARGET_COPY_OUT_VENDOR)/build_cebu.prop

TARGET_VENDOR_PROP += device/motorola/borneo/props/vendor.prop

# Recovery
AB_OTA_PARTITIONS += recovery

# NFC
TARGET_USES_NXP_NFC := true

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/sm4250-common/platform.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/motorola/borneo/borneo-vendor.mk)
