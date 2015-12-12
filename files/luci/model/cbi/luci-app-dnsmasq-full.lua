--[[
luci-app-dnsmasq-full: dnsmasq-full
]]--

local fs = require "nixio.fs"

local f = SimpleForm("dnsmasq-full",
	translate("dnsmasq-full - Custom Configuration"),
	translate("."))

local o = f:field(Value, "_custom")

o.template = "cbi/tvalue"
o.rows = 30

function o.cfgvalue(self, section)
	return fs.readfile("/etc/dnsmasq.d/custom.conf")
end

function o.write(self, section, value)
	value = value:gsub("\r\n?", "\n")
	fs.writefile("/etc/dnsmasq.d/custom.conf", value)
end

return f
