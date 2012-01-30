From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 30 Jan 2012 21:39:39 +0100
Subject: BCM5354 SoC with LP Phy Wifi
In-Reply-To: <4F26F195.9050509@hauke-m.de>
References: <4F25C467.7070805@hauke-m.de>
 <CACb-4KjixkVS5pe+mucyOaKeHAMb11m=YBZ47STZAiKDwRH2rQ@mail.gmail.com>
 <4F26F195.9050509@hauke-m.de>
Message-ID: <CACna6rwfgTPfY7w0Pb0N1v2KrxhOReiyZK1dPDvY0LOE9894CA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/1/30 Hauke Mehrtens <hauke@hauke-m.de>:
> Hi William,
>
> On 01/30/2012 04:39 PM, William R Agosto Padilla wrote:
>> Mr. Hauke,
>>
>> I am new to the reverse engineering process. However I am working on a
>> project that
>> requires me to use printk statements in the b43 device driver code, so I
>> can see how it is
>> really working during initialization, resetting, and suspension of the
>> networking process.
>>
>> The first problem that I encountered was finding the b43 source code for
>> download.
>> I was only able to find the assembly code for the b43 firmware. Do you
>> know of a specific download
>> location where I can get the entire b43's ''C'' source code?
> Just go to https://www.kernel.org/ and download the Linux kernel it has
> b43 included in it in drivers/net/wireless/b43 or use
> http://wireless.kernel.org/en/users/Download/stable/
>
>> ?Reading
>> your email I realized that you
>> have already done what I will be attempting to do. Mainly, using printk
>> statements inside the b43 code.
>> I have been at this for a couple of months without any luck. Would you
>> mind if I ask a few questions
>> about the way you went about on doing so? Or advice on how to do it?
>>
>> Did you added the printk statements into the b43 source code or the b43
>> firmware code?
> I do not have access to the source code of the broadcom firmware, but
> there is an open source project developing an open Source firmware
> http://www.ing.unibs.it/~openfwwf/
>>I would like to try
>> something similar. As I mentioned earlier, I was not able to see the
>> b43's 'C' source code with my
>> Linux Ubuntu 11.10 distribution. I found a copy of the firmware source
>> code with the
>> assembly language, etc. Is that the code that you used for the printk
>> statements?
> I am just working on the driver and treating the firmware as a black box.
>> I thought that since the b43 driver is included in the kernel that
>> Ubuntu 11.10 has, it
>> would also include the source code--no luck with that.
>>
>> Any insight that you can share would be very much appreciated.

William, you're asking random people privately in random threads and
you're duplicating your questions.

If there is something we can explain to you, please just ask using
b43-devl mailing list. I'm sure you'll get some answers and we won't
waste our time responding on the questions you've already got
explained by sb else.

-- 
Rafa?
