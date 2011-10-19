From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Wed, 19 Oct 2011 19:26:12 +0200
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9EDCFC.9000301@lwfinger.net>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
	<4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
	<4E9DD41A.2030805@lwfinger.net> <4E9DD6FD.3030108@vodafone.es>
	<4E9DDC16.40501@lwfinger.net> <4E9DE41D.5020909@vodafone.es>
	<4E9DEA29.4050509@lwfinger.net> <4E9EBF72.2090505@vodafone.es>
	<4E9EC5A5.2040105@lwfinger.net> <4E9ECD29.1080105@vodafone.es>
	<4E9EDCFC.9000301@lwfinger.net>
Message-ID: <4E9F0834.70801@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El 19/10/11 16:21, Larry Finger escribi?:
> On 10/19/2011 08:14 AM, Jes?s Vidal Panal?s wrote:
>>
>> Running XP i can see packets using eth.addr filter on the other laptop.
>
> It would appear that the radio is being blocked. Does that zv5000 have 
> a wireless switch? It should show up in rfkill, but it might not.
>
> I'm going to be out of town for a few days starting this morning. To 
> get on the air, you might try blacklisting ssb and implementing 
> ndiswrapper using the Windows XP driver. That will work only if you 
> are using a 32-bit Linux system.
>
> Larry
>
>
>
>
>

It seems that is not working either with ndiswrapper

[   92.187817] b43-pci-bridge 0000:02:02.0: PCI INT A disabled
[   99.660030] Disabling lock debugging due to kernel taint
[   99.682428] ndiswrapper version 1.56 loaded (smp=yes, preempt=no)
[   99.773932] ndiswrapper: driver bcmwl5 (Broadcom,04/21/2005, 
3.100.65.1 <tel:3.100.65.1>) loaded
[   99.774352] ndiswrapper 0000:02:02.0: PCI INT A -> Link[LNK3] -> GSI 
17 (level, low) -> IRQ 17
[   99.779287] ndiswrapper (NdisWriteErrorLogEntry:190): log: C000138D, 
count: 1, return_address: f170dd9d
[   99.779298] ndiswrapper (NdisWriteErrorLogEntry:193): code: 0x10e
[   99.779496] ndiswrapper (mp_init:219): couldn't initialize device: 
C0000001
[   99.779507] ndiswrapper (pnp_start_device:435): Windows driver 
couldn't initialize the device (C0000001)
[   99.779525] ndiswrapper (mp_halt:262): device ed3aa440 is not 
initialized - not halting
[   99.779533] ndiswrapper: device eth%d removed
[   99.779561] ndiswrapper 0000:02:02.0: PCI INT A disabled
[   99.779586] ndiswrapper: probe of 0000:02:02.0 failed with error -22
[   99.783497] usbcore: registered new interface driver ndiswrapper
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111019/ce49fb2a/attachment.html>
