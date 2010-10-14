From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Oct 2010 22:47:10 +0200
Subject: brcm80211 in b43
In-Reply-To: <AANLkTikX2BXn8mhSUJ9aMSVTWpWxWGfmxEWm7gdcoKTu@mail.gmail.com>
References: <840064.48426.qm@web111406.mail.gq1.yahoo.com>
	<AANLkTikX2BXn8mhSUJ9aMSVTWpWxWGfmxEWm7gdcoKTu@mail.gmail.com>
Message-ID: <AANLkTikRzOZhtVWH71Q909O-L8=JWhrrR3+6OwnTGR07@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/14 G?bor Stefanik <netrolller.3d@gmail.com>:
> On Thu, Oct 14, 2010 at 9:51 PM, Ariel Pedraza <pedrazaa@yahoo.com> wrote:
>> In the future the b43 driver will support the same devices that the brcm80211 driver does? just one universal driver pure FOSS...
>
> No.
>
> B43 only supports SSB-based devices; while brcm80211 is for SSB-less
> ones. (Brcmfmac is yet another driver - for fullmac Broadcoms with the
> exception of BCM4320, which is handled by rndis_wlan.)

Should be possible to add support for SSB-less devices in b43 in
future. Probably should be easier than adding support for SSB-based
devices in brcm80211, shouldn't it?

-- 
Rafa?
