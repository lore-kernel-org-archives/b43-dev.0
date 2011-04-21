From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 20 Apr 2011 21:02:52 -0500
Subject: One more lspci invisible Broadcom card, HP Compaq 6515b
In-Reply-To: <BANLkTikr+akiow_O-THXkos_eHGPKBm5AQ@mail.gmail.com>
References: <BANLkTikr+akiow_O-THXkos_eHGPKBm5AQ@mail.gmail.com>
Message-ID: <4DAF904C.5070106@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/20/2011 05:42 PM, Rafa? Mi?ecki wrote:
>
> Of course this is HP notebook with WiFi blacklist in BIOS, so putting
> another card is not a option.

The HP BIOS allows a small set of PCI IDs. Usually, some Intel cards will be 
allowed as well as some Broadcom units.

> I asked unitedriders for putting his BCM4311 in another machine. He
> has access to some Sony VAIO, but card slot is different (I guess HP
> has mini PCI, Sony has mini PCIe).
>
> AFAIR last time I reported such a issue noone got any idea what could
> be wrong. But it does not hurt to bring this question once again.
>
> Do you have any ideas other than faulty port or card? Unfortunately
> there is not other OS on this machine to test card detection with.
>
> unitedriders mentioned his HP has so called "touch sensive" wlan
> switch, but it's unlikely it totally disables PCI port.

Does the BIOS allow the wifi device to be disabled?

If unitedriders has access to any other wifi card that will fit in the slot, 
then the BIOS can be used to test the slot. If the other card is recognized, 
then the BIOS error message will appear. That will definitely say that the 
problem is not the bridge or the PCI adapter. I guess this machine has mini-PCI, 
not mini-PCIe.

The only other possibility is that all the hardware is good, but the kernel 
cannot drive the bridge to which the BCM4311 is attached. Does the dmesg output 
have any indication of this?

Larry
