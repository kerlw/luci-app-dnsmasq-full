--[[
luci-app-dnsmasq-full: dnsmasq-full
]]--

module("luci.controller.luci-app-dnsmasq-full", package.seeall)

function index()
	entry({"admin", "services", "luci-app-dnsmasq-full"}, cbi("luci-app-dnsmasq-full"), _("dnsmasq-full"), 40).dependent = true
end

