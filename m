From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 19 Jul 2011 09:46:54 -0500
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <CACna6rwEoNuSJxrQ+62FgTJnMN3CwYBBakXOMKRt0DKy_QXAEg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>	<4E2497B6.9030105@lwfinger.net>	<CACna6rw-0OpJ9fZdDjPsaJGibvZDXMYpDCVeKV00P_5y+YpS1A@mail.gmail.com>
	<CACna6rwEoNuSJxrQ+62FgTJnMN3CwYBBakXOMKRt0DKy_QXAEg@mail.gmail.com>
Message-ID: <4E2598DE.1030604@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/19/2011 01:56 AM, Rafa? Mi?ecki wrote:
> W dniu 19 lipca 2011 01:32 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>  napisa?:
>> Larry, for now, can you check:
>>
>> 1) When wl does set parity (0x800) bit
>> 2) Does newer wl always use 38 offset for RX header?
>
> After adding routing (translation) address, using parity bit (0x800)
> and cold booting, DMA seems to work =)

Good to hear. I have not found anything about the offset of 38, but I have some 
confusing stuff on the parity enable bit.

One routine in the reference driver does the following:

1. If bit 1 is set in the DMA control flags (this bit was set to 1 in the init)
  a. Read DMA control
  a. OR result with 0x800 and write to control
  a. Read DMA control
  a. If bit 0x800 is set
   1. Write original contents back to control
  a. Otherwise
   1. Clear bit 1 in DMA control flags

The above routine makes it look as if they have tested whether the device 
implements the parity bit. The funny part is that I cannot find any other place 
where they test the DMA control flags for bit 1 set. There is a spot where they 
unconditionally set bit 0x800 in the DMA control, which seems to match what you see.

I guess it will be OK to unconditionally set bit 0x800. Any device that does not 
implement the parity enable bit will not care, and those that have it work with wl.

Larry
