#
# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Proprietary files
$(call inherit-product, vendor/samsung/ms01lte/ms01lte-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Radio/RIL
#$(call inherit-product, device/samsung/ms01-common/radio/dual/product.mk)

#nfc
NXP_CHIP_TYPE := 1
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf \
    $(LOCAL_PATH)/nfc/nfc-nci.conf:system/etc/nfc-nci.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# common ms01
$(call inherit-product, device/samsung/ms01-common/ms01.mk)
