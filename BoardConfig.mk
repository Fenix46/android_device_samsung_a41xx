DEVICE_PATH := device/samsung/a41
ALLOW_MISSING_DEPENDENCIES := true

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := k68v1_64_titan
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := false

TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Platform
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOARD_PLATFORM_GPU := mali-g52

# Boot
BOARD_BOOT_HEADER_VERSION := 2
BOARD_BOOT_HEADER_SIZE := 1660
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_IMAGE_NAME := KernelImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_DTB_OFFSET := 0x0bc08000

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_SOURCE := kernel/samsung/
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := _defconfig
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/_mt6768.dtbo
BOARD_MKBOOTIMG_ARGS := \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--second_offset $(BOARD_KERNEL_SECOND_OFFSET) \
	--header_version $(BOARD_BOOT_HEADER_VERSION) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--board "SRPTA24B001" \
	--dtb_offset $(BOARD_DTB_OFFSET)


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4276838400
BOARD_VENDORIMAGE_PARTITION_SIZE := 790544384

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)/releasetools

# SELinux
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/public

# Symbols
TARGET_LD_SHIM_LIBS := /system/lib/libshowlogo.so|libshim_showlogo.so

# Network Routing
TARGET_IGNORES_FTP_PPTP_CONNTRACK_FAILURE := true

# Ril
ENABLE_VENDOR_RIL_SERVICE := true

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Security patch level [ro.build.version.security_patch]
VENDOR_SECURITY_PATCH := 2022-04-01

# AUDIO
USE_XML_AUDIO_POLICY_CONF := 1

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Samsung Audio Hal
TARGET_AUDIOHAL_VARIANT := samsung

# VNDK
BOARD_VNDK_VERSION := current

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# Lineage hardware
BOARD_HARDWARE_CLASS += \
    $(COMMON_PATH)/lineagehw

# DEX Pre-optimization
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
    WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
  endif
endif

# HIDL
DEVICE_MANIFEST_FILE := \
	$(DEVICE_PATH)/manifest/android.hardware.cas@1.2-service-lazy.xml \
	$(DEVICE_PATH)/manifest/android.hardware.dumpstate@1.1-service-lazy.xml \
	$(DEVICE_PATH)/manifest/android.hardware.health@2.1-samsung.xml \
	$(DEVICE_PATH)/manifest/android.hardware.neuralnetworks@1.3-service-mtk-gpu.xml \
	$(DEVICE_PATH)/manifest/android.hardware.sensors@2.0-multihal.xml \
	$(DEVICE_PATH)/manifest/android.hardware.usb@1.3-service.coral.xml \
	$(DEVICE_PATH)/manifest/android.hardware.wifi@1.0-service.xml \
	$(DEVICE_PATH)/manifest/android.hardware.wifi.hostapd.xml \
	$(DEVICE_PATH)/manifest/android.hardware.wifi.supplicant.xml \
	$(DEVICE_PATH)/manifest/deviceManifest.xml \
	$(DEVICE_PATH)/manifest/engmode_manifest.xml \
	$(DEVICE_PATH)/manifest/hyper-default-sec.xml \
	$(DEVICE_PATH)/manifest/lights-default-sec.xml \
	$(DEVICE_PATH)/manifest/manifest_android.hardware.drm@1.4-service.clearkey.xml \
	$(DEVICE_PATH)/manifest/manifest_android.hardware.drm@1.4-service.widevine.xml \
	$(DEVICE_PATH)/manifest/manifest_hwcomposer.xml \
	$(DEVICE_PATH)/manifest/manifest.xml \
	$(DEVICE_PATH)/manifest/power-default.xml \
	$(DEVICE_PATH)/manifest/sec.android.hardware.nfc@1.2-service.xml \
	$(DEVICE_PATH)/manifest/sec_c2_manifest_default0_1_2.xml \
	$(DEVICE_PATH)/manifest/vaultkeeper_manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.authfw@1.0-manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.biometrics.fingerprint@3.0-service.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.hqm@1.0-manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.security.hdcp.wifidisplay-default.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.thermal@1.0-manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.tlc.hdm@1.1-manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.tlc.iccc@1.0-manifest.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.wifi@2.0-service.xml \
	$(DEVICE_PATH)/manifest/vendor.samsung.hardware.wifi.hostapd.xml \
	$(DEVICE_PATH)/manifest/wsm_manifest.xml

DEVICE_MATRIX_FILE := $(DEVICE_PATH)/manifest/matrix/compatibility_matrix.xml
# DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/manifest/matrix/framework_compatibility_matrix.xml

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := a10s

-include vendor/samsung//BoardConfigVendor.mk
