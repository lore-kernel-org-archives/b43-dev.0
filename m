From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Mon, 30 Jan 2012 21:48:22 +0100
Subject: BCM5354 SoC with LP Phy Wifi
In-Reply-To: <CACna6ry+DcJe5o4SPmn1=UuUNsPYFpkhXd4Nhw-HQ+Xn=d5_hQ@mail.gmail.com>
References: <4F25C467.7070805@hauke-m.de> <4F25D746.2020801@hauke-m.de>
 <CACna6rxvftL8fQpzhyUD-Q6RgoAur7+qRbb_4VyDa413aBPk+A@mail.gmail.com>
 <4F26F36D.5050903@hauke-m.de>
 <CACna6ry+DcJe5o4SPmn1=UuUNsPYFpkhXd4Nhw-HQ+Xn=d5_hQ@mail.gmail.com>
Message-ID: <4F270216.8000309@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 01/30/2012 09:37 PM, Rafa? Mi?ecki wrote:
> W dniu 30 stycznia 2012 20:45 u?ytkownik Hauke Mehrtens
> <hauke@hauke-m.de> napisa?:
>> On 01/30/2012 07:29 AM, Rafa? Mi?ecki wrote:
>>> While I'll try to implement/update LP-PHY code, I think it still would
>>> be nice to investigate this problem. Do we have some leak in b43? We
>>> should fix it if so.
>> I haven't found a leak in b43 yet, just one in an OpenWrt switch driver,
>> while searching in b43. ;-)
>> It's nice to hear that you will work on the LP-PHY part, to me it looks
>> like ~30% of the spec is not implemented. have you started implementing
>> the GMAC Ethernet driver?
> 
> I've started fighting with my router. I've tested it's working (on
> original firmware), I'm trying now to get root access to get
> partitions layout. I've already opened it (this required small Torx
> screwdriver) and built 3,3V console. I'm working on creating console
> pins (unfortunately they were removed from production==non-beta
> boards).
I had the same problem with my Netgear device on the pictures made by
the FCC there are nice pins on the board and ASUS just leaves them there
for the production devices, but my Netgear devices did not had them.
The pin layout is probably the same as for the WNR3500L here:
http://wiki.openwrt.org/toh/netgear/wnr3500l

>>> Could you check what exactly happens in b43_dma_tx please?
>> Yes I will look deeper into this.
>> Do you have a working LP-PHY device, so that I could give you some
>> patches and then compare the output?
> 
> My LP-PHY had some performance problems, probably some important
> calibration is missing.

I got ~4MBit/s when running my device in AP mode with old firmware over
~0.5 meters.

Hauke
