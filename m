From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 11 Dec 2010 11:22:46 -0600
Subject: Request for bisecting DMA partial fix
In-Reply-To: <AANLkTi=zLV_BrJ2XqGNc9YVBmnWRDW3KYKFx2DhFeRiw@mail.gmail.com>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>	<AANLkTintrxtNDKJRPiNXAvr2XX3Fa5ZNBqwca59d9GfV@mail.gmail.com>	<20101126173952.GC2370@markov>	<AANLkTi=g3bXnGiqC3zH6gFVi8tLhoiHYbDnhWOXptRk7@mail.gmail.com>	<20101211085104.GB22346@markov>
	<AANLkTi=zLV_BrJ2XqGNc9YVBmnWRDW3KYKFx2DhFeRiw@mail.gmail.com>
Message-ID: <4D03B366.3060008@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12/11/2010 11:16 AM, Rafa? Mi?ecki wrote:
> W dniu 11 grudnia 2010 09:51 u?ytkownik Eric Garrido <eric@ericgar.com> napisa?:
>> On 2010-12-01  8:55pm, Rafa? Mi?ecki wrote:
>>>> I'm away for the NA holiday, but I can try to verify I have 1) and
>>>> then poke at this on Sunday. I'll let you know.
>>>
>>> Ping? :)
>>
>> Ack. My apologies. Life got in the way (giving notice to my employer,
>> when one would think I'd work *less* afterward, but the opposite has
>> proven to be true). I should be *actually* able to do this tomorrow,
>> and if need be, on Sunday.
> 
> Great, thanks :)
> 
> Larry: when you noticed this fix on your machine, did you use same
> config for building new kernel as was used for earlier (distro?) one?

No. I always trim the module list to match the hardware on the machine, and add
some module hacking options that they leave off.

I need to go back to 2.6.34 to verify that I do get DMA errors with that kernel.

Larry
