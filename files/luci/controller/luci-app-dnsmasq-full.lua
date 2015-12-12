--[[
luci-app-dnsmasq-full: dnsmasq-full
]]--

module("luci.controller.dnsmasq-full", package.seeall)

function index()
	entry({"admin", "services", "dnsmasq-full"},
		cbi("dnsmasq-full"),
		_("dnsmasq-full"), 40).leaf = true
end

