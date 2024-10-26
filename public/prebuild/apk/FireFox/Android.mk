###############################################################################
# FireFox
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := FireFox
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/preinstall
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
ifeq ($(TARGET_ARCH),arm64)
    LOCAL_SRC_FILES := org.mozilla.focus.apk
else
    LOCAL_SRC_FILES := org.mozilla.focus_32.apk
endif
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
#LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
