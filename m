From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 14 Aug 2012 22:05:42 +0200
Subject: Packet loss on bcm4331
In-Reply-To: <502AA727.8080607@lwfinger.net>
References: <502AA1F4.7090607@gwright.org.uk> <502AA727.8080607@lwfinger.net>
Message-ID: <CACna6ryC6L1x4GqbUs=jPRkSRzFbkbs_kuWzG_fW-46D0CNvcA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/8/14 Larry Finger <Larry.Finger@lwfinger.net>:
> On 08/14/2012 02:07 PM, George Wright wrote:
>>
>> I have a MacBook with a bcm4331 chip which mostly works in Linux (Fedora
>> 17 w/kernel 3.5.1), but I'm noticing horrible packet loss and throughput
>> a lot of the time.
>>
>> The setup is basically a small apartment with an 802.11bgn router
>> sitting in the living room; I've had the laptop sit directly on top of
>> the router and run ping to another computer wired directly into the
>> access point and experienced 75% packet loss. File transfers are
>> experiencing throughput in the region of 200kB/s to 800kB/s. Oddly
>> enough, the amount of packet loss is significantly reduced if I'm
>> connected in my bedroom (~20 feet from the router and with a couple of
>> walls in between). I've also experienced the same problems with my
>> backup wireless router (a WRT54GL running dd-wrt).
>
>
> In b43, power management of 802.11n devices has never been implemented in
> the fullest form. Thus, it is likely that the gain setting is too high when
> you are close to the AP and the resulting distortion is causing failures.

I promise to work on this, but I can provide only N-PHY support (we
have specs for them). I'll try my best to do some power management for
N-PHY for 3.7 merge window.
Right now I'm focused on SoC support for my BCM4706 SoC. But
fortunately I'm getting everything pushed upstream slowly.

Unfortunately BCM4331 is HT-PHY which I can't really improve. We don't
have any specs about that PHY type and support is mostly pure luck.

I may try to improve is a little since I get BCM4706 support (my SoC
has two BCM4331 connected via PCIE), but don't expect much :(

-- 
Rafa?
