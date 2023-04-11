#
# Copyright 2020 The Android Open-Source Project
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

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_orioleburger.mk)
$(call inherit-product, device/google/gs101/custom_common.mk)

include device/google/raviole/oriole/device-custom.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_raven
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ2A.230405.003.E1 9802792 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ2A.230405.003.E1/9802792:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
