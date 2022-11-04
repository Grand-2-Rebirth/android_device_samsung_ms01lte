#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/samsung/ms013g/device.mk)

# Release name
PRODUCT_RELEASE_NAME := SM-G7105

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms01lte
PRODUCT_NAME := lineage_ms01lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy Grand 2
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

