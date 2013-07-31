# Hack for build 
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr/include)
LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),U8833D)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
