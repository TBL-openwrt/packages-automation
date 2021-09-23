#
# Copyright (C) 2020 sramrajkar
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
PKG_NAME:=modbustk
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ljean/modbus-tk.git
PKG_HASH:=14c70f2c3c794b7e2944762f408b98e7bc77a8fe

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-modbustk
  SECTION:=language-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python-modbustk
  URL:=https://github.com/ljean/modbus-tk.git
  DEPENDS:=+python +python-serial
  MAINTAINER:=Galen Collins
endef

define Package/python-modbustk/description
MODBUS polling module with some HMI support
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/python-modbustk/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,python-modbustk))