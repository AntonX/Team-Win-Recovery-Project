LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := exfat-fuse
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64
LOCAL_SRC_FILES = main.c 
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
					$(LOCAL_PATH)/../libexfat \
					$(LOCAL_PATH)/../../fuse/include
LOCAL_SHARED_LIBRARIES += libz libc libexfat libdl 
LOCAL_STATIC_LIBRARIES += libfusetwrp

include $(BUILD_EXECUTABLE)

