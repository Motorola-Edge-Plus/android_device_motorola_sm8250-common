#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from our proprietary vendor. We have this at the top so it can override
# any potential libraries, configurations, etc from other inherited repositories.
$(call inherit-product, vendor/motorola/sm8250-common/sm8250-common-vendor.mk)

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.recovery.rc \
    init.qcom.sh \
    init.target.rc \
    ueventd.qcom.rc

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
