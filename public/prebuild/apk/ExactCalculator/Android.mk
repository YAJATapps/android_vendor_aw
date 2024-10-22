###############################################################################
# ExactCalculator
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ExactCalculator
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/preinstall
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := com.google.android.calculator.apk
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
#LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
