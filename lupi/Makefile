#    Copyright (C) 2011 Guifi.net Foundation
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
#    The full GNU General Public License is included in this distribution in
#    the file called "COPYING".
#
# Contributors:
#	Pau Escrich <p4u@dabax.net>

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=lupi
PKG_VERSION:=0.1
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/lupi
  TITLE:=Lua unified programming interface
  SECTION:=base
  CATEGORY:=Base system
  URL:=http://qmp.cat
  DEPENDS:= luci-lib-web luci-lib-sys luci-lib-json luci-lib-core luci-lib-ipkg lua libiwinfo-lua luasocket 
endef

define Package/lupi/description
	Lua unified programming interface is a set of libraries for control and monitorize the OpenWRT system
endef

define Package/lupi/conffiles
	/etc/config/lupi
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/lupi/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,lupi))
