TARGET := iphone:clang:latest:16.0
INSTALL_TARGET_PROCESSES = Apollo

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ApolloUserAgentFix

ApolloUserAgentFix_FILES = Tweak.x
ApolloUserAgentFix_CFLAGS = -fobjc-arc
ApolloUserAgentFix_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"