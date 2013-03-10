# Inherit AOSP device configuration for mako.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Grouper Overlays.
PRODUCT_PACKAGE_OVERLAYS += vendor/elite/overlay/grouper

# Inherit common product files.
$(call inherit-product, vendor/elite/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := elite_grouper
PRODUCT_BRAND := asus
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Inherit common build.prop overrides
-include vendor/elite/products/common_versions.mk

# Copy grouper specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/grouper/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/elite/proprietary/tuna/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/elite/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/elite/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Inherit media effect blobs
-include vendor/elite/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/elite/products/common_facelock.mk

# Inherit drm blobs
-include vendor/elite/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/elite/products/common_speech_recognition.mk
