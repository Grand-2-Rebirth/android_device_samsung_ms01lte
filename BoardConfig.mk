# Copyright (C) 2014-2016 The CyanogenMod Project
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

#Fix Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# inherit from common ms01
include device/samsung/ms01-common/BoardConfigCommon.mk

# Shims
TARGET_LD_SHIM_LIBS += \
        /system/vendor/lib/libmmcamera_imx175.so|libshim_imx175.so

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1835008000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55801768968
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Radio
SIM_COUNT := 1

# NFC
BOARD_NFC_CHIPSET := pn547

# Kernel
TARGET_KERNEL_CONFIG := lineage_ms01lte_defconfig

# inherit from the proprietary version
-include vendor/samsung/ms01lte/BoardConfigVendor.mk
