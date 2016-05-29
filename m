From: Arend van Spriel <arend.vanspriel@broadcom.com>
Date: Sun, 29 May 2016 20:48:22 +0200
Subject: BCM4331 reset leads to wl lockup
In-Reply-To: <20160529110248.GA12632@wunner.de>
References: <20160526121210.GA7006@wunner.de> <20160526144246.217bfff1@wiggum>
 <20160529110248.GA12632@wunner.de>
Message-ID: <574B3976.3060708@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lukas Wunner <lukas@wunner.de>, =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Cc: linux-wlan-client-support-list@broadcom.com, 1332647@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 29-05-16 13:02, Lukas Wunner wrote:
> On Thu, May 26, 2016 at 02:42:46PM +0200, Michael B?sch wrote:
>> On Thu, 26 May 2016 14:12:10 +0200 Lukas Wunner <lukas@wunner.de> wrote:
>>> +	mmio = early_ioremap(addr, BCM4331_MMIO_SIZE);
>>> +	if (!mmio) {
>>> +		pr_err("Cannot iomap Apple AirPort card\n");
>>> +		return;
>>> +	}
>>> +	pr_info("Resetting Apple AirPort card\n");
>>> +	iowrite32(BCMA_RESET_CTL_RESET,
>>> +		  mmio + (1 * BCMA_CORE_SIZE) + BCMA_RESET_CTL);
>>> +	early_iounmap(mmio, BCM4331_MMIO_SIZE);
>>
>> Just writing that bit is not the correct reset procedure.
>> So it might cause problems depending on how wl does the core reset
>> later.
>>
>> Please try this:
>> - wait for BCMA_RESET_ST to be 0
>> - set reset bit
>> - flush
>> - wait 1us
>> - reset reset bit
>> - flush
>> - wait 10us
>>
>> See bcma_core_disable()
> 
> It turned out that the lockups are triggered by bec3cfdca36b
> ("net: skb_segment() provides list head and tail") in Linux 3.18
> and that Eric Duzamet has kindly provided a fix for broadcom-sta:
> https://bugs.gentoo.org/show_bug.cgi?id=523326#c24
> https://523326.bugs.gentoo.org/attachment.cgi?id=393374
> 
> @Broadcom: Please consider releasing a new driver version which
> incorporates that patch. The latest version 6.30.223.271 of your
> driver is still missing it even though the issue has existed for
> almost 18 months now.
> 
> Nevertheless I amended my patch to follow the reset procedure you
> specified above, just to cover all bases. Thanks Michael.

That reset procedure is a bit superseded. For brcmfmac we decided to
talk to some hardware engineers and looking at ai_core_disable (from
which bcma_core_disable() is (probably) derived) they shook their head
in horror. So better check brcmf_chip_ai_coredisable() in
.../brcm80211/brcmfmac/chip.c. The function needs a prereset and reset
parameter which are core specific. For the 802.11 core you need
preset=D11_BCMA_IOCTL_PHYRESET | D11_BCMA_IOCTL_PHYCLOCKEN and
reset=D11_BCMA_IOCTL_PHYCLOCKEN.

/* D11 core specific control flag bits */
#define D11_BCMA_IOCTL_PHYCLOCKEN	0x0004
#define D11_BCMA_IOCTL_PHYRESET		0x0008

I still have a patch for bcma lying around for this, but did not
complete the work for submission.

Regards,
Arend

> Best regards,
> 
> Lukas
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo at vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
