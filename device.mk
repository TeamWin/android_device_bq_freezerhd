LOCAL_PATH := device/bq/freezerhd

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/init.recovery.mt8163.rc:root/init.recovery.mt8163.rc \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/recovery/md32_d.bin:root/md32_d.bin \
    $(LOCAL_PATH)/recovery/md32_p.bin:root/md32_p.bin

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := freezerhd
