USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/bryce/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_USES_ADRENO_200 := true

## ARMv7 Processor rev 2 (v7l)
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_BOOTLOADER_BOARD_NAME := bryce
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=bryce
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_PAGE_SIZE := 2048

BOARD_FLASH_BLOCK_SIZE := 131072

## Partition sizes
# Esteem LG-MS910
ifeq ($(SUB_MODEL),MS910)
    TARGET_USERIMAGES_USE_EXT4 := true
    BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
    BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
    BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1031798784
    BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
endif

# Revolution LG-VS910
ifeq ($(SUB_MODEL),VS910)
    TARGET_USERIMAGES_USE_EXT4 := false
    BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
    BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
    BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
    BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
endif 

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

BOARD_HAS_NO_MISC_PARTITON := true

BOARD_HAS_SDCARD_INTERNAL := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# custom lun0 file for USB Mass Storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

## Kernel
ifeq ($(SUB_MODEL),MS910)
TARGET_PREBUILT_KERNEL := device/lge/bryce/kernels/MS910/kernel
endif

ifeq ($(SUB_MODEL),VS910)
TARGET_PREBUILT_KERNEL := device/lge/bryce/kernels/VS910/kernel
endif

# Recovery
ifeq ($(SUB_MODEL),MS910)
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/bryce/recovery/MS910/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/bryce/recovery/MS910/graphics.c
endif

ifeq ($(SUB_MODEL),VS910)
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/bryce/recovery/VS910/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/bryce/recovery/VS910/graphics.c
endif

BOARD_HAS_NO_SELECT_BUTTON := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_USES_HGL := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_VOIPMUTE := true
BOARD_USES_QCOM_RESETALL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

BOARD_EGL_CFG := vendor/lge/bryce/proprietary/lib/egl/egl.cfg

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true

BOARD_CAMERA_USE_GETBUFFERINFO := true

BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO