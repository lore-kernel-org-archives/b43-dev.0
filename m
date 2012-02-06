From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Mon, 06 Feb 2012 20:13:11 +0100
Subject: BCM4331 fails to associate after suspend
In-Reply-To: <20120206173757.GC31938@ubuntu-macmini>
References: <20120203222818.GA3749@ubuntu-mba> <4F2D0C07.1010704@broadcom.com>
 <20120204142502.GA10858@ubuntu-mba>
 <CACna6ryR2xm2EAJaV4vCO8WebR5pXCyFknEMrf8ynVF+HYrxTw@mail.gmail.com>
 <20120206173757.GC31938@ubuntu-macmini>
Message-ID: <4F302647.2070102@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Arend van Spriel <arend@broadcom.com>, Scott Sanbar <scott.sanbar@gmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

On 02/06/2012 06:37 PM, Seth Forshee wrote:
> On Mon, Feb 06, 2012 at 05:56:20PM +0100, Rafa? Mi?ecki wrote:
>> 2012/2/4 Seth Forshee <seth.forshee@canonical.com>:
>>> On Sat, Feb 04, 2012 at 11:44:23AM +0100, Arend van Spriel wrote:
>>>> On 02/03/2012 11:28 PM, Seth Forshee wrote:
>>>>>
>>>>> I've been looking around a bit in the b43 and bcma drivers, but so far I
>>>>> haven't found the reason why this happens. Any help would be
>>>>> appreciated. Let me know if there's additional information I can
>>>>> provide.
>>>>>
>>>>
>>>> With which kernel version do you see these issues? BCMA suspend/resume
>>>> code has a fix in 3.3-rc1. So if you are seeing it on a 3.2 kernel,
>>>> please give it a try.
>>>
>>> I've tried 3.3-rc2 and the wirless-testing tree, and the problem still
>>> exists in both.
>>
>> I don't have access to suspendable machine with Mini PCIe card, not to
>> mention BCM4331 which is available for Mac-specific slot only (or
>> routers as embedded wifi). It may be b43 needs to fix but I'm not
>> really able to work on that. Plus the whole BCM4331 code is really
>> tricky, as it comes from RE based on dumps only :(
> 
> Okay, I'll keep poking at it to see if I can come up with anything. If
> you've got any suggestions on things I should be looking at or trying,
> I'm all ears.
> 
> Seth

According to the Broadcom SDK for SoCs bcma_pcicore_serdes_workaround()
should be called when coming out of standby/hibernate.
The code wl uses to do the same thing as bcma does is open source. You
find it in the GPL package of many Broadcom based Wifi Routers.

Hauke
