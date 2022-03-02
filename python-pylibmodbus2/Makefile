#
# Copyright (C) 2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
PKG_NAME:=pylibmodbus2
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_SOURCE_VERSION:=ba254fd0fae2106d60352f24cb2bfce96c632084

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/TBL-openwrt/pylibmodbus.git
HASH:=skip
#PKG_MD5SUM:=ba254fd0fae2106d60352f24cb2bfce96c632084

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/pylibmodbus2
  SECTION:=language-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python-pylibmodbus2
  URL:=https://github.com/TBL-openwrt/pylibmodbus.git
  DEPENDS:=+python3 +python3-pyserial +libmodbus +python3-cffi
  MAINTAINER:=Galen Collins
endef

define Package/pylibmodbus2/description
TBL version of pylibmodbus
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/pylibmodbus2/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,python-pylibmodbus2))