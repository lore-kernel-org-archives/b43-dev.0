From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 7 May 2011 22:40:51 +0200
Subject: ssb: where to reject dangling cores?
Message-ID: <BANLkTimRasoDAbK+tLNFx8zK96Xe1hnHXg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, Michael Buesch <mb@bu3sch.de>
Cc: b43-dev <b43-dev@lists.infradead.org>

Michael, I can see code for ignoring dangling cores in both: ssb and b43.

In ssb it's quite common, we have:
1) we_support_multiple_80211_cores for 80211
2) inline checks in ssb_bus_scan for PCI(E)
3) inline check in ssb_bus_scan for ETHERNET

However there is also check in b43 at the beginning of b43_one_core_attach:
if (!pdev ||
	((pdev->device != 0x4321) &&
	(pdev->device != 0x4313) && (pdev->device != 0x431A))) {
	b43dbg(wl, "Ignoring unconnected 802.11 core\n");
	return -ENODEV;
}

Should I move this check into ssb?

-- 
Rafa?
