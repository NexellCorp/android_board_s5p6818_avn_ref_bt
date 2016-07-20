PRODUCT_COPY_FILES += \
    vendor/google/gapps/Gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/google/gapps/Gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/google/gapps/Gapps/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/google/gapps/Gapps/framework/com.google.android.dialer.support.jar:system/framework/com.google.android.dialer.support.jar \
    vendor/google/gapps/Gapps/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/google/gapps/Gapps/framework/com.google.android.maps.jar:system/framework/com.google.maps.jar \
    vendor/google/gapps/Gapps/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/google/gapps/Gapps/lib/libgoogle_hotword_jni.so:system/lib/libgoogle_hotword_jni.so \
    vendor/google/gapps/Gapps/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/google/gapps/Gapps/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/google/gapps/Gapps/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libAppDataSearch.so:system/priv-app/PrebuiltGmsCore/lib/arm/libAppDataSearch.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_base.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_base.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libgms-ocrclient.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgms-ocrclient.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libjgcastservice.so:system/priv-app/PrebuiltGmsCore/lib/arm/libjgcastservice.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libWhisper.so:system/priv-app/PrebuiltGmsCore/lib/arm/libWhisper.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libgames_rtmp_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgames_rtmp_jni.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_support.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_support.so \
    vendor/google/gapps/Gapps/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libcrashreporter.so:system/app/PlusOne/lib/arm/libcrashreporter.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libcronet.so:system/app/PlusOne/lib/arm/libcronet.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libfilterframework_jni.so:system/app/PlusOne/lib/arm/libfilterframework_jni.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libmoviemaker-jni.so:system/app/PlusOne/lib/arm/libmoviemaker-jni.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libphotoeditor_native.so:system/app/PlusOne/lib/arm/libphotoeditor_native.so \
    vendor/google/gapps/Gapps/app/PlusOne/lib/arm/libwebp_android.so:system/app/PlusOne/lib/arm/libwebp_android.so
    #vendor/google/gapps/Gapps/lib/libspeexresampler.so:system/lib/libspeexresampler.so \
    vendor/google/gapps/Gapps/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \

PRODUCT_PACKAGES += \
	GoogleBackupTransport \
	GoogleFeedback \
	GoogleServicesFramework \
	PrebuiltGmsCore \
	GoogleLoginService \
	GooglePartnerSetup \
	Phonesky \
	YouTube

#	GoogleOneTimeInitializer \
#	Phonesky \
#	Maps \
#	SetupWizard \
#	Velvet \
#	GoogleMusic \
#	GoogleVideos \
#	PrebuiltBugle \
#	PrebuiltGmail \
#	PlusOne
