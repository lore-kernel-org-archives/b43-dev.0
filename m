From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 8 Apr 2012 21:54:31 +0200
Subject: brcmsmac on BCM47XX SoCs
In-Reply-To: <4F815181.6030007@broadcom.com>
References: <4F7F71A2.40105@hauke-m.de>
	<4F815181.6030007@broadcom.com>
Message-ID: <CACna6rzSsQXxyMTX+-UJ-BuJ671avs8dVPOnOc1kSRW-3URvQg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

2012/4/8 Arend van Spriel <arend@broadcom.com>:
> On 04/06/2012 11:43 PM, Hauke Mehrtens wrote:
>> What are your plans to support phy_ht in brcmsmac, for now it is just
>> supported by b43?
>
>
> I have not been paying good attention to community feedback on b43 phy_ht
> support. As b43 support bcm4331 with that phy we decided to stay clear from
> that device. We are to add new phy code for new devices. Not sure if that
> includes the phy_ht.

Whoops, that's extremely too bad. HT support is really wanted for a
lot of routers. What we have in b43 is support coming from watching
mmio ops only, there is no way for it to be complete. I believe you
really should think and releasing HT PHY code, a lot of ppl will be
interested in that.

-- 
Rafa?
