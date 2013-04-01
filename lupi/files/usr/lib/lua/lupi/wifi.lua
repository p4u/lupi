#!/usr/bin/lua
--[[
    Copyright (C) 2011 Fundacio Privada per a la Xarxa Oberta, Lliure i Neutral guifi.net
    
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

    The full GNU General Public License is included in this distribution in
    the file called "COPYING".
--]]

--! @file
--! @brief wifi functions

model = require "lupi.model"
util = require "lupi.util"
debug = require "lupi.debug"
iwinfo = require "iwinfo"

wifi = {}
wifi.info = {}

-- TODO
--! @brief Applies the current WiFi configuration to the system
--! @param dev device to apply, if nil the it applies to all wifi interfaces
--! return success or not
function wifi.apply(dev)
	debug.set_namespace("WiFi")
	debug.logger(util.printf("Executing wifi.apply(%s)",dev))
	if dev == nil then
		-- Applies all devices
	else
		-- Applies only dev
	end
end

function wifi.info.modes(dev)
	local modes = {}
	local iw = iwinfo[iwinfo.type(dev)]
	if iw ~= nil then modes = iw.hwmodelist(dev) end
	return modes
end

function wifi.info.isWifi(dev)
	local iw = iwinfo[iwinfo.type(dev)]
	if iw == nil then return false end
	return true
end
