PRODUCT_PACKAGES += \
    SampleHome

PRODUCT_PROPERTY_OVERRIDES := \
        net.dns1=8.8.8.8 \
        net.dns2=8.8.4.4

$(call inherit-product, device/nexell/s5p6818_avn_ref_bt/product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := aosp_s5p6818_avn_ref_bt
PRODUCT_DEVICE := s5p6818_avn_ref_bt
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on s5p6818_avn_ref_bt
PRODUCT_MANUFACTURER := NEXELL
