LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := PNDSetting
 
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src) \
    $(call all-Iaidl-files-under, src)
    
LOCAL_JAVA_LIBRARIES := droidlogic
LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v7-recyclerview \
    android-support-v17-leanback \
    commonscodec \
    commonslogging  \
    fluent \
    httpclient-4.2.5 \
    httpclient-cache-4.2.5 \
    httpcore-4.2.4 \
    httpmime-4.2.5 

LOCAL_RESOURCE_DIR := \
    $(TOP)/frameworks/support/v17/leanback/res \
    $(LOCAL_PATH)/res   

LOCAL_AAPT_FLAGS := --auto-add-overlay --extra-packages android.support.v17.leanback

 

LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_DEX_PREOPT := false

include $(BUILD_PACKAGE)
include $(CLEAR_VARS)


LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := commonscodec:libs/commons-codec-1.6.jar \
                                        commonslogging:libs/commons-logging-1.1.1.jar \
                                        fluent:libs/fluent-hc-4.2.5.jar \
                                        httpclient-4.2.5:libs/httpclient-4.2.5.jar \
					httpclient-cache-4.2.5:libs/httpclient-cache-4.2.5.jar \
					httpcore-4.2.4:libs/httpcore-4.2.4.jar \
					httpmime-4.2.5:libs/httpmime-4.2.5.jar


include $(BUILD_MULTI_PREBUILT)
