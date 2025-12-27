packages {
	'iwinfo',
}

features {
	'authorized-keys',
	'autoupdater',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'mesh-batman-adv-15',
	'mesh-vpn-fastd',
	'respondd',
	'status-page',
	'web-advanced',
	'web-wizard',
}

if not device_class('tiny') then
	features {
		'alfred',
		'logging',
		'tls',
	}

	packages {
		'tcpdump',
	}
end

if device {'tplink_archer-c6-v2'} then
	disable()
end
