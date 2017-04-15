From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 15 Apr 2017 11:28:46 -0500
Subject: Using b43 with broadcom 4312 on hp2133 yields "device not ready"
In-Reply-To: <c92149c95e371f5d4dc914210a8f46b8@out-of-bounds.de>
References: <7828614472cf8cead9a152593a34bcfe@out-of-bounds.de>
 <e2ef8f21-66b3-ef8d-9baa-9204a9ac7920@lwfinger.net>
 <c92149c95e371f5d4dc914210a8f46b8@out-of-bounds.de>
Message-ID: <a9ead8f0-d135-d84a-9a68-9f08294315c3@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/14/2017 03:13 PM, registration at out-of-bounds.de wrote:
> Hi again,
>
> when using google on the "channel switch error", I came across the commands
> "iwlist" and "iw" so find their output enclosed in the hopes it helps.
>
> Trying "iw phy0 set channel x" did not work, though: device busy
>
> I also found a reference to a kernel patch regarding the issue/error message:
> https://patchwork.kernel.org/patch/4276461/

That patch was applied to kernel code on May 31, 2014.

> hope that helps you help me ;-)

I'm not sure how much help I can give you. I have now built a modern kernel for 
my netbook. On it the BCM4312 works fine. That system had older firmware on it 
so I downloaded the newest file and installed it. The device still works, thus I 
think we can rule out some unexpected changes in either the driver or the 
firmware. I was using kernel 4.11.0-rc5.

My conclusion is that your hardware is defective. Unfortunately, although a 
replacement part can be obtained on E-Bay for less that $4, replacing the WLAN 
module on that particular laptop requires complete disassembly. I would not 
recommend that unless you have considerable experience.

My suggestion is that you purchase a USB adapter for this laptop. If you are 
willing to purchase from E-Bay, the small, dual-band 802.11ac devices are under 
$20 US. I'm not sure what they will cost in Germany.

Larry
