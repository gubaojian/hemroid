LOCAL_PATH := $(call my-dir)
VAULT_PATH := ../../vault/hemroot/$(TARGET_ARCH_ABI)

# gstallocators
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstallocators_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstallocators-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstallocators-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstAllocators.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstAllocators(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstapp
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstapp_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstapp-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstapp-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstApp.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstApp(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstaudio
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstaudio_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstaudio-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstaudio-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstAudio.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstAudio(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstfft
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstfft_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstfft-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstfft-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstFft.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstFft(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstpbutils
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstpbutils_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstpbutils-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstpbutils-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstPbUtils.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstPbUtils(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstriff
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstriff_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstriff-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstriff-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstRiff.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstRiff(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstrtp
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstrtp_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstrtp-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstrtp-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstRtp.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstRtp(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstrtsp
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstrtsp_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstrtsp-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstrtsp-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstRtsp.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstRtsp(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstsdp
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstsdp_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstsdp-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstsdp-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstSdp.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstSdp(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gsttag
include $(CLEAR_VARS)
LOCAL_MODULE			:= gsttag_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgsttag-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgsttag-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstTag.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstTag(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

# gstvideo
include $(CLEAR_VARS)
LOCAL_MODULE			:= gstvideo_$(TARGET_ARCH_ABI)
LOCAL_SRC_FILES			:= $(VAULT_PATH)/lib/libgstvideo-1.0.so
LOCAL_SHARED_LIBRARIES	:= gstreamer_$(TARGET_ARCH_ABI) libffi_$(TARGET_ARCH_ABI)
LOCAL_EXPORT_CFLAGS		:= -I$(LOCAL_PATH)/$(VAULT_PATH)/include/gstreamer-1.0
LOCAL_LDLIBS			:= -lz -lm
LOCAL_EXPORT_LDLIBS		:= -L$(LOCAL_PATH)/$(VAULT_PATH)/lib -lgstvideo-1.0
$(LOCAL_MODULE): $(LOCAL_SHARED_LIBRARIES)
	$(shell mkdir -p src/main/java/org/liquidplayer/hemroid)
	$(shell cp -r $(LOCAL_PATH)/../gst-plugins-base/java/GstVideo.java src/main/java/org/liquidplayer/hemroid)
$(LOCAL_MODULE)_JavaInterface:
	$(eval EXPORT_JAVA_INTERFACE += new GstVideo(context);)
$(LOCAL_PATH)/$(LOCAL_SRC_FILES):
	$(LOCAL_PATH)/../../hemroid install --abi=$(TARGET_ARCH_ABI) gst-plugins-base
libraries: $(LOCAL_PATH)/$(LOCAL_SRC_FILES)

include $(LOCAL_PATH)/../hemroid/prebuilt-shared-library.mk

$(call import-module, gstreamer)