--[[
LuCI - Lua Configuration Interface

Copyright 2012 Patrick Grimm <patrick@lunatiki.de>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id$
]]--
module("luci.controller.bacnet", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/bacnet_dev") then
		return
	end
	entry({"admin", "bacnet"}, alias("admin", "bacnet", "bacnet_dev"), _("Bacnet"), 40).index = true
	local page = entry({"admin", "bacnet", "bacnet_dev"}, cbi("bacnet/bacnet_dev"), "Bacnet Device", 20)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_ai"}, cbi("bacnet/bacnet_ai"), "Analog Input", 21)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_ao"}, cbi("bacnet/bacnet_ao"), "Analog Output", 22)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_av"}, cbi("bacnet/bacnet_av"), "Analog Value", 23)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_bi"}, cbi("bacnet/bacnet_bi"), "Binary Input", 24)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_bo"}, cbi("bacnet/bacnet_bo"), "Binary Output", 25)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_bv"}, cbi("bacnet/bacnet_bv"), "Binary Value", 26)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_mi"}, cbi("bacnet/bacnet_mi"), "Multisate Input", 27)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_mo"}, cbi("bacnet/bacnet_mo"), "Multisate Output", 28)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_mv"}, cbi("bacnet/bacnet_mv"), "Multisate Value", 29)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_nc"}, cbi("bacnet/bacnet_nc"), "Notification Class", 30)
	page.dependent = true
	local page = entry({"admin", "bacnet", "bacnet_tl"}, cbi("bacnet/bacnet_tl"), "Trendlog", 31)
	page.dependent = true

	local page = entry({"admin", "bacnet", "bacnetgroups"}, cbi("bacnet/groups", {autoapply=false}), "Bacnet Groups", 32)
	page.dependent = true
end

