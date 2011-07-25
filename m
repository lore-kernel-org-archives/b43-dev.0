From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 25 Jul 2011 11:21:44 +0200
Subject: Malformed RX header on new (rev 6xx) firmware
In-Reply-To: <CACna6ryEOqeQ9+UGCxWd=A8JFsPuGjJxJGj28=iYvhVNWk-y6A@mail.gmail.com>
References: <CACna6ryEOqeQ9+UGCxWd=A8JFsPuGjJxJGj28=iYvhVNWk-y6A@mail.gmail.com>
Message-ID: <CACna6rwtmHZMTtK9Fp6BrJ3S0yiVd=amm0Nv7Jb0+7E6-aaaHA@mail.gmail.com>
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

I decided to dump 4 more bytes. At the end of struct b43_rxhdr_fw4 I've added:
__le16 hack1;
__le16 hack2;

[  953.587835] frame_len: 0x008F
[  953.587837] phy_status0: 0x2000
[  953.587839] phy_status2: 0x0028
[  953.587841] phy_status3: 0x0000
[  953.587843] mac_status: 0x00000000
[  953.587845] mac_time: 0x0000
[  953.587847] channel: 0x0106
[  953.587849] hack1: 0x8C88
[  953.587850] hack2: 0x0024

My hack2 looks like the real "channel" field.
0x0024 & B43_RX_CHAN_PHYTYPE ? PHY type 4
0x0024 & B43_RX_CHAN_ID >> 3 ? Channel id 4

To make sure, I've set up new AP on channel 6 and performed scanning.
[ 1479.679678] frame_len: 0x00CF
[ 1479.679680] phy_status0: 0x2004
[ 1479.679682] phy_status2: 0x0045
[ 1479.679684] phy_status3: 0x0000
[ 1479.679686] mac_status: 0x00000000
[ 1479.679688] mac_time: 0x0002
[ 1479.679690] channel: 0x0106
[ 1479.679691] hack1: 0xDD3E
[ 1479.679693] hack2: 0x0034

[ 1479.682615] frame_len: 0x00D5
[ 1479.682617] phy_status0: 0x2004
[ 1479.682619] phy_status2: 0x003F
[ 1479.682621] phy_status3: 0x0000
[ 1479.682623] mac_status: 0x00000000
[ 1479.682625] mac_time: 0x0000
[ 1479.682627] channel: 0x0106
[ 1479.682629] hack1: 0xE892
[ 1479.682631] hack2: 0x0034

Field hack2 looks sane again
0x0034 & B43_RX_CHAN_PHYTYPE ? PHY type 4
0x0034 & B43_RX_CHAN_ID >> 3 ? Channel id 6

-- 
Rafa?
