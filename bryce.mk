$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/bryce/$(SUB_MODEL)/bryce-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/bryce/overlay/$(SUB_MODEL)


# Copy files to target...
PRODUCT_COPY_FILES += \
      device/lge/bryce/init.bryce.rc:root/init.bryce.rc 

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/bryce/kernels/$(SUB_MODEL)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_PACKAGES += \
    librs_jni \
    gralloc.msm7x30 \
    overlay.default \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# use high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_bryce
PRODUCT_DEVICE := bryce

# Kernel modules
PRODUCT_COPY_FILES += \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/evbug.ko:system/lib/modules/evobug.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/hdmicec.ko:system/lib/modules/hdmicec.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/hdmitx.ko:system/lib/modules/hdmitx.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_oobtest.ko:system/lib/modules/mtd_obbtest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/oprofile.ko:system/lib/modules/oprofile.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/qce.ko:system/lib/modules/qce.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/qcrypto.ko:system/lib/modules/qcrypo.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/tun.ko:system/lib/modules/tun.ko \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/modules/wireless.ko:system/lib/modules/wireless.ko

# HW
PRODUCT_COPY_FILES += \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so 

PRODUCT_COPY_FILES += \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/etc/gps.conf:system/etc/gps.conf \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/libGLESv1_CM.so:system/lib/libGLESv1_CM.so \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/lib/libGLESv2.so:system/lib/libGLESv2.so \

# SDCard
PRODUCT_COPY_FILES += \
    device/lge/bryce/vold.fstab:system/etc/vold.fstab

# Carrier props
ifeq ($(SUB_MODEL),VS910)
    CDMA_GOOGLE_BASE := android-verizon
    CDMA_CARRIER_ALPHA := Verizon_Wireless
    CDMA_CARRIER_NUMERIC := 310012
###  Needs to be verified!!!
    BLUETOOTH_FIRMWARE := BCM4329B1_002.002.023.0589.0634.hcd
endif

ifeq ($(SUB_MODEL),MS910)
    CDMA_GOOGLE_BASE := android-metropcs-us
    CDMA_CARRIER_ALPHA := MetroPCS
    CDMA_CARRIER_NUMERIC := 311660
    BLUETOOTH_FIRMWARE := BCM4329B1_002.002.023.0589.0634.hcd
endif

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/bryce/proprietary/$(SUB_MODEL)/bin/$(BLUETOOTH_FIRMWARE):system/bin/BCM4329.hcd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC)
 
