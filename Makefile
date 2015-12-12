#
# Copyright (C) 2016 Cuteribs
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-dnsmasq-full
PKG_VERSION=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=Custom DNS Config for LuCI
	PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	This package contains LuCI configuration pages for $(PKG_NAME).
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	
	$(INSTALL_DATA) ./files/luci/controller/$(PKG_NAME).lua $(1)/usr/lib/lua/luci/controller/$(PKG_NAME).lua
	$(INSTALL_DATA) ./files/luci/model/cbi/$(PKG_NAME).lua $(1)/usr/lib/lua/luci/model/cbi/$(PKG_NAME).lua
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
