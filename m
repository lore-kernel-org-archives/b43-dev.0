From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 6 Sep 2014 22:48:02 +0200
Subject: B43 driver problem
In-Reply-To: <CA+FnnTz9oJcdaS_aA7GsNEQHNF-OO8JcE-+5OkpgdBeKmzEi_g@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <53F75312.60200@lwfinger.net>
 <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
 <53F8B222.3080406@lwfinger.net>
 <CA+FnnTzG_dWyVfA1s+AOXV9VpzhbmE5YkHX-nUg5RTYbKQNxtQ@mail.gmail.com>
 <20140824092021.6bfb718b@wiggum>
 <CA+FnnTz9oJcdaS_aA7GsNEQHNF-OO8JcE-+5OkpgdBeKmzEi_g@mail.gmail.com>
Message-ID: <20140906224802.5a8a36ea@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 6 Sep 2014 13:06:27 -0700
Igor Korot <ikorot01@gmail.com> wrote:

> Hi, Michael,
> [code]
> IgorDellGentoo agw # lspci -v
> 0c:00.0 Network controller: Broadcom Corporation BCM4312 802.11b/g
> LP-PHY (rev 01)
>         Subsystem: Dell Wireless 1397 WLAN Mini-Card
>         Flags: bus master, fast devsel, latency 0, IRQ 17
>         Memory at f69fc000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 3
>         Capabilities: [58] Vendor Specific Information: Len=78 <?>
>         Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
>         Capabilities: [d0] Express Endpoint, MSI 00
>         Capabilities: [100] Advanced Error Reporting
>         Capabilities: [13c] Virtual Channel
>         Capabilities: [160] Device Serial Number 66-4a-5f-ff-ff-ce-00-22
>         Capabilities: [16c] Power Budgeting <?>
>         Kernel driver in use: b43-pci-bridge
> [/code]
> 
> Do you know what is this b43-pci-bridge is? How do I turn it off?
> Is it CONFIG_SSB related?

You don't want to disable it.
This is the PCI driver that registers the b43 ssb bus that lives on the b43 PCI device.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140906/f1a09334/attachment.sig>
