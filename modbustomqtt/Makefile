#
# Copyright (C) 2020 sramrajkar
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
PKG_NAME:=modbus2mqtt
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/TBL-openwrt/modbus2mqtt.git
PKG_HASH:=43E4B24C8183C1FBE976E9D017B989EEA7B358167362E93E44F5812A7D1E0364

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/python-modbus2mqtt
  SECTION:=language-python
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=python-modbus2mqtt
  URL:=https://github.com/TBL-openwrt/modbus2mqtt.git
  DEPENDS:=+python3 +python3-twisted +python3-pyserial +python-modbustk
  MAINTAINER:=Galen Collins
endef

define Package/python-modbus2mqtt/description
MODBUS polling module to read slave registers and send data via MQTT topics
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/python-modbus2mqtt/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
		$(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
		$(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,python-modbus2mqtt))