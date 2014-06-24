From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 24 Jun 2014 19:05:52 +0200
Subject: Unable to use b43 using a BCM43222 mini-PCI
In-Reply-To: <c19c6039788fd68ee0e98d22c9f0b51b.squirrel@webmail.home108.com>
References: <53A99571.9020805@home108.com>
 <CACna6rwzFMonQwv1f=+xQ8ce+DN1LS66UBn_Uq9KT1LqkznWKQ@mail.gmail.com>
 <c19c6039788fd68ee0e98d22c9f0b51b.squirrel@webmail.home108.com>
Message-ID: <CACna6ryWQJxcOG=jkvOj8i_pFtxm4t23pOMigOZF5zf5gTNHOQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 24 June 2014 18:57, Camille Prevost <cam@home108.com> wrote:
> Thank you for this quick reply :)
>
> I firstly tried to : echo "14e4 4350" >
> /sys/bus/pci/drivers/b43-pci-bridge/new_id , then I obtain this at the end
> of my dmesg :
>
> ...
> [13660.804224] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x1E, vendor
> 0x4243)
> [13660.804256] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10, vendor
> 0x4243)
> [13660.804282] ssb: Core 2 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
> [13660.824164] ssb: ERROR: PLL init unknown for device A8D6
> [13660.840150] ssb: ERROR: PMU resource config unknown for device A8D6
> [13660.892434] b43-phy0: Broadcom 43222 WLAN found (core revision 16)
> [13660.960697] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
> [13660.977285] Registered led device: b43-phy0::tx
> [13660.978336] Registered led device: b43-phy0::rx
> [13660.979534] Registered led device: b43-phy0::radio
> [13660.979570] ssb: Sonics Silicon Backplane found on PCI device 0000:00:0c.0
>
> (...)
>
> Should I really compile a 3.8 kernel as suggested ? I surely can, but not
> immediately, because the Compact Flash I use is too small for this ... !
>
> But if you think it's better (for keeping ID after reboot), I will do...
> and give you a feedback surely !

Please keep discussion on the list.

New kernels have some improvements, not just bigged IDs database.
There were some fixes for N-PHY and kernel 3.16 will bring even more
fixes (correct handling of radio rev 11). See how well 3.2 works for
you and in case of problems think about update.
