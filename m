From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 9 Feb 2011 21:00:04 +0100
Subject: Notes on ssb specs and implementation
Message-ID: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, Michael Buesch <mb@bu3sch.de>, Larry Finger <Larry.Finger@lwfinger.net>
Cc: b43-dev <b43-dev@lists.infradead.org>

Hi,

I've N-PHY card that doesn't report any scan results, so after
checking N-PHY code (it looks fine so far) I decided to dig into ssb.
Hopefully this will lead to some fixes and maybe working card.

I've dumped MMIO operations performed by wl and ssb/b43, compared
them, documented with parts from specs and noted differences.

As you should know, we have to enable wireless core twice: first time
to get basic information about hardware, second to configure it in
correct (like PHY specific) way.

ssb_device_enable_1 is for first reset
ssb_device_enable_2 is for second reset

Notes from ssb_device_enable_1:
1) There are few undocumented flushes performed by both drivers. Could
be nice to document it in specs
2) wl does not reset PHY (no B43_TMSLOW_PHYRESET and no taking it out
of reset after enabling wireless core)
3) After reset (last step in ssb_device_enable) wl doesn't leave core
specific flags

Notes from ssb_device_enable_2:
1) ssb does not implement fast disable in case clocks are not enabled
2) ssb uses different Reject bit than wl
3) ssb doesn't check for "If the Core ID Low register has the
"Initiator" bit set"
4) wl checks for "Busy" bit in IM STATE, not TM as documented in specs
5) when writing "Force Gated Clocks On", "Clock Enable", and "Reset"
both drivers keep Reject set, however specs don't mention that
6) wl checks "If the "Initiator" bit in TM State Low is set" using ff8
register which is Core ID Low, not TMSLOW
7) rest differences are duplicated from ssb_device_enable_1

Larry: could you care for specs notes I collected?

Michael: was there any reasons why we didn't implement some parts of
core-disabling code?
Michael: should we care about the way wl sets core specific flags? I
didn't dig into that moment in MMIO dumps, but as ssb_device_enable
implementation ignores flags at the end, it has to set flags somehow
differently on it's own.

-- 
Rafa?
-------------- next part --------------
wl:

>>> ssb_device_enable start
>>> ssb_device_disable start		Disable the Core to account for a core in a random state
ssb_read32(0xf98) -> 0x00000003		If the core is already in reset (the "Reset" bit in TM State Low is set) it's already disabled, return
ssb_read32(0xf98) -> 0x00000003		If the core is already in reset (the "Reset" bit in TM State Low is set) it's already disabled, return
>>> ssb_device_disable end

ssb_write32(0xf98) <- 0x00070001	(specific==B43_TMSLOW_PHYCLKEN) Write the "Force Gated Clocks On", "Clock Enable",and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x00070001		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x100c0000		If the S Error bit is set in the TM State High register
ssb_read32(0xf90) -> 0x00000020		Unset the "In Band Error" or "Timeout" bits if the IM State register has them set

ssb_write32(0xf98) <- 0x00070000	(specific==B43_TMSLOW_PHYCLKEN) Write the "Force Gated Clocks On", "Clock Enable" bits, along with any device specific flags requested, to the TM State Low register (unset the rest) 
ssb_read32(0xf98) -> 0x00070000		Perform a dummy read on the TM State Low register

ssb_write32(0xf98) <- 0x00010000	(Why no B43_TMSLOW_PHYCLKEN?) Write the "Clock Enable" bit along with any device specific flags requested to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x00010000		Undocumented flush
>>> ssb_device_enable end
-------------- next part --------------
b43/ssb:

>>> ssb_device_enable start
>>> ssb_device_disable start		Disable the Core to account for a core in a random state
ssb_read32(0xf98) -> 0x00000001		If the core is already in reset (the "Reset" bit in TM State Low is set) it's already disabled, return

>>> ssb_device_disable end

ssb_write32(0xf98) <- 0x000f0001	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET) Write the "Force Gated Clocks On", "Clock Enable",and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x000f0001		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x10080000		If the S Error bit is set in the TM State High register
ssb_read32(0xf90) -> 0x00000020		Unset the "In Band Error" or "Timeout" bits if the IM State register has them set

ssb_write32(0xf98) <- 0x000f0000	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET) Write the "Force Gated Clocks On", "Clock Enable" bits, along with any device specific flags requested, to the TM State Low register (unset the rest) 
ssb_read32(0xf98) -> 0x000f0000		Perform a dummy read on the TM State Low register

ssb_write32(0xf98) <- 0x000d0000	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET) Write the "Clock Enable" bit along with any device specific flags requested to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x000d0000		Undocumented flush
>>> ssb_device_enable end

ssb_read32(0xf98) -> 0x000d0000		Unset the PHY Reset flag and set the Force Gated Clocks flag in TM State Low Flags
ssb_write32(0xf98) <- 0x00070000	Unset the PHY Reset flag and set the Force Gated Clocks flag in TM State Low Flags
ssb_read32(0xf98) -> 0x00070000		Undocumented flush

ssb_write32(0xf98) <- 0x00050000	Unset the Force Gated Clocks flag in TM State Low Flags
ssb_read32(0xf98) -> 0x00050000		Undocumented flush
-------------- next part --------------
wl:

>>> ssb_device_enable start
>>> ssb_device_disable start		Disable the Core to account for a core in a random state
ssb_read32(0xf98) -> 0x00010000		If the core is already in reset (the "Reset" bit in TM State Low is set) it's already disabled, return
ssb_read32(0xf98) -> 0x00010000		If clocks are not yet enabled (the "Clock Enabled" bit in TM State Low



ssb_write32(0xf98) <- 0x00010002	Set the "Reject" bit in TM State Low, which will cause the core to reject further input
ssb_read32(0xf98) -> 0x00010002		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x100c0000		Wait until the "Busy" bit in TM State High is unset (or 100000 uS, checking every 10uSec)
ssb_read32(0xf9c) -> 0x100c0000		Wait until the "Busy" bit in TM State High is unset (or 100000 uS, checking every 10uSec)

 read32 0xc0200ff8 -> 0x410422c5	If the Core ID Low register has the "Initiator" bit set
ssb_read32(0xf90) -> 0x00000020		Set the "Reject" bit in the IM State register
ssb_write32(0xf90) <- 0x02000020	Set the "Reject" bit in the IM State register
ssb_read32(0xf90) -> 0x02000020		Perform a dummy read on the IM State register
ssb_read32(0xf90) -> 0x02000020		(TM != IM) Wait until the "Busy" bit in TM State is unset (of 100000 uS, checking every 10uS)

ssb_write32(0xf98) <- 0x00070003	(Reject is written!) (specific==B43_TMSLOW_PHYCLKEN) Write the "Force Gated Clocks On", "Clock Enable", and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x00070003		Perform a dummy read on the TM State Low register

 read32 0xc0200ff8 -> 0x410422c5	(Core ID != TMSLOW) If the "Initiator" bit in TM State Low is set
ssb_read32(0xf90) -> 0x02000020		Clear the "Reject" bit in the IM State register
ssb_write32(0xf90) <- 0x00000020	Clear the "Reject" bit in the IM State register

ssb_write32(0xf98) <- 0x00040003	(specific==B43_TMSLOW_PHYCLKEN) Write the "Reset" and "Reject" bits along with any device specific flags requested to the TM State Low register

>>> ssb_device_disable end

ssb_write32(0xf98) <- 0x00070001	(specific==B43_TMSLOW_PHYCLKEN) Write the "Force Gated Clocks On", "Clock Enable",and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x00070001		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x100c0000		If the S Error bit is set in the TM State High register
ssb_read32(0xf90) -> 0x00000020		Unset the "In Band Error" or "Timeout" bits if the IM State register has them set

ssb_write32(0xf98) <- 0x00070000	(specific==B43_TMSLOW_PHYCLKEN) Write the "Force Gated Clocks On", "Clock Enable" bits, along with any device specific flags requested, to the TM State Low register (unset the rest) 
ssb_read32(0xf98) -> 0x00070000		Perform a dummy read on the TM State Low register

ssb_write32(0xf98) <- 0x00010000	(Why no B43_TMSLOW_PHYCLKEN?) Write the "Clock Enable" bit along with any device specific flags requested to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x00010000		Undocumented flush
>>> ssb_device_enable end
-------------- next part --------------
b43/ssb:

>>> ssb_device_enable start
>>> ssb_device_disable start		Disable the Core to account for a core in a random state
ssb_read32(0xf98) -> 0x00050000		If the core is already in reset (the "Reset" bit in TM State Low is set) it's already disabled, return 
					If clocks are not yet enabled (the "Clock Enabled" bit in TM State Low 
					Write the "Reset" and "Reject" bits along with any device specific flags requested to the TM State Low, wait 1uS, register and return

 read32 0xc0200ff8 -> 0x410422c5	ssb_tmslow_reject_bitmask
ssb_write32(0xf98) <- 0x00010004	Set the "Reject" bit in TM State Low, which will cause the core to reject further input
ssb_read32(0xf98) -> 0x00010004		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x10080000		Wait until the "Busy" bit in TM State High is unset (or 100000 uS, checking every 10uSec)


?					If the Core ID Low register has the "Initiator" bit set





ssb_write32(0xf98) <- 0x204f0005	Write the "Force Gated Clocks On", "Clock Enable", and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x204f0005		Perform a dummy read on the TM State Low register

?					If the "Initiator" bit in TM State Low is set 
?					Clear the "Reject" bit in the IM State register


ssb_write32(0xf98) <- 0x204c0005	Write the "Reset" and "Reject" bits along with any device specific flags requested to the TM State Low register
ssb_read32(0xf98) -> 0x204c0005		Undocumented flush
>>> ssb_device_disable end

ssb_write32(0xf98) <- 0x204f0001	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET | B43_TMSLOW_GMODE | B43_TMSLOW_PHY_BANDWIDTH_20MHZ) Write the "Force Gated Clocks On", "Clock Enable",and "Reset" bits along with any device specific flags requested, to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x204f0001		Perform a dummy read on the TM State Low register

ssb_read32(0xf9c) -> 0x10080000		If the S Error bit is set in the TM State High register
ssb_read32(0xf90) -> 0x00000020		Unset the "In Band Error" or "Timeout" bits if the IM State register has them set

ssb_write32(0xf98) <- 0x204f0000	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET | B43_TMSLOW_GMODE | B43_TMSLOW_PHY_BANDWIDTH_20MHZ) Write the "Force Gated Clocks On", "Clock Enable" bits, along with any device specific flags requested, to the TM State Low register (unset the rest) 
ssb_read32(0xf98) -> 0x204f0000		Perform a dummy read on the TM State Low register

ssb_write32(0xf98) <- 0x204d0000	(specific==B43_TMSLOW_PHYCLKEN | B43_TMSLOW_PHYRESET | B43_TMSLOW_GMODE | B43_TMSLOW_PHY_BANDWIDTH_20MHZ) Write the "Clock Enable" bit along with any device specific flags requested to the TM State Low register (unset the rest)
ssb_read32(0xf98) -> 0x204d0000		Undocumented flush
>>> ssb_device_enable end

ssb_read32(0xf98) -> 0x204d0000		Unset the PHY Reset flag and set the Force Gated Clocks flag in TM State Low Flags
ssb_write32(0xf98) <- 0x20470000	Unset the PHY Reset flag and set the Force Gated Clocks flag in TM State Low Flags
ssb_read32(0xf98) -> 0x20470000		Undocumented flush

ssb_write32(0xf98) <- 0x20450000	Unset the Force Gated Clocks flag in TM State Low Flags
ssb_read32(0xf98) -> 0x20450000		Undocumented flush
