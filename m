From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 25 Jul 2011 12:00:35 +0200
Subject: Malformed RX header on new (rev 6xx) firmware
In-Reply-To: <CACna6ryEOqeQ9+UGCxWd=A8JFsPuGjJxJGj28=iYvhVNWk-y6A@mail.gmail.com>
References: <CACna6ryEOqeQ9+UGCxWd=A8JFsPuGjJxJGj28=iYvhVNWk-y6A@mail.gmail.com>
Message-ID: <CACna6rz7kKuwzg8JSeXqDhdvSzptNQnYYE0eZpESNZd5R2XVew@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 24 lipca 2011 22:56 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> I'm trying to add support for 6xx firmware (like 644.1001). I've
> slightly updated TX header (4 more unused u16 fields) and I got rid of
> TX transmission errors thanks to that.
>
> Unfortunately every RX header I receive seems to be malformed
> (stipped?) and b43 drops packets.
>
> With 508.1103:
> [38518.414658] frame_len: 0x008F
> [38518.414662] phy_status0: 0x2000
> [38518.414664] phy_status2: 0x003D
> [38518.414666] phy_status3: 0x0000
> [38518.414668] mac_status: 0x01060000
> [38518.414670] mac_time: 0x58CC
> [3851328.414673] channel: 0x0024 [phy:4; chanid:4]
>
> [38518.415901] frame_len: 0x0089
> [38518.415903] phy_status0: 0x2000
> [38518.415905] phy_status2: 0x0033
> [38518.415907] phy_status3: 0x0000
> [38518.415909] mac_status: 0x01060002
> [38518.415911] mac_time: 0x5DE8
> [38518.415914] channel: 0x0024 [phy:4; chanid:4]
>
> [38518.417940] frame_len: 0x0089
> [38518.417943] phy_status0: 0x2000
> [38518.417945] phy_status2: 0x0037
> [38518.417947] phy_status3: 0x0000
> [38518.417949] mac_status: 0x01060002
> [38518.417951] mac_time: 0x65DF
> [38518.417954] channel: 0x0024 [phy:4; chanid:4]
>
> With 644.1001:
> [38421.950019] frame_len: 0x008F
> [38421.950024] phy_status0: 0x2000
> [38421.950026] phy_status2: 0x002C
> [38421.950028] phy_status3: 0x0000
> [38421.950030] mac_status: 0x00000000
> [38421.950032] mac_time: 0x0000
> [38421.950035] channel: 0x0106 [phy:6; chanid:32]
>
> [38421.955783] frame_len: 0x0089
> [38421.955787] phy_status0: 0x2000
> [38421.955789] phy_status2: 0x003A
> [38421.955792] phy_status3: 0x0000
> [38421.955794] mac_status: 0x00000000
> [38421.955796] mac_time: 0x0002
> [38421.955800] channel: 0x0106 [phy:6; chanid:32]
>
> So when using 604.1001 firmware I don't get mac_status, mac_time is
> sth random, and chanstat is always 0x106.
>
> Interesting is that RX data seem to be usable (didn't check if 100%
> valid). If I comment out dropping package, I get scanning results.
>
> Do you have idea what can be causing it?
>
> 1) I've tried changing B43_DMA0_RX_FRAMEOFFSET to 38 (to match wl) but
> this didn't help.
> +#define B43_DMA0_RX_FRAMEOFFSET ? ? ? ? ? ? ? ?38
>
> 2) Dumping RXSTATUS and RXERRRO doesn't show anything interesting, the
> result is the same for older and newer firmware
> pr_info("RXSTATUS: 0x%X\n", b43_dma_read(ring, B43_DMA64_RXSTATUS));
> pr_info("RXERROR: 0x%X\n", b43_dma_read(ring, B43_DMA64_RXERROR));
>
> 3) In the TX header we have two differences:
> a) Cookie is quite different, but I'm not sure if it's processed by
> ucode at all. I think it's just copied by firmware when giving us
> feedback about TX we submitted to the hardware.
> b) Field mac_ctl differs. We (b43) set B43_TXH_MAC_HWSEQ |
> B43_TXH_MAC_STMSDU | B43_TXH_MAC_LONGFRAME. brcm80211 sets
> B43_TXH_MAC_STMSDU
>
> 4) dwmw2 noticed that wl (in ndiswrapper) does use full address
> instead of index for "Descriptor Stop". According to brcm80211
> comments it's for allowing sending unaligned packets to the hardware.
>
> --
> Rafa?
>

How it happened, I didn't notice relation between:
> mac_status: 0x01060000
and:
> mac_time: 0x0000
> channel: 0x0106

Now that's obvious, 4 more bytes between phy_status3 and mac_status :)

The ugly part is that Broadcom changes that at some random firmware
updates. For example: take a look at brcm80211. It uses 610 firmware.
brcm80211 uses new TX header, but old rx header. Well, few more "if"s
to implement.

-- 
Rafa?
