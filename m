From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 29 Dec 2010 18:30:40 -0600
Subject: 2.6.37-rc7: Regression: b43: crashes in hwrng_register()
In-Reply-To: <20101229195440.GD5838@darkside.kls.lan>
References: <4D1A8200.4010609@lwfinger.net>
	<20101229195440.GD5838@darkside.kls.lan>
Message-ID: <4D1BD2B0.4020101@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mario 'BitKoenig' Holbe <Mario.Holbe@TU-Ilmenau.DE>
Cc: LKML <linux-kernel@vger.kernel.org>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 12/29/2010 01:54 PM, Mario 'BitKoenig' Holbe wrote:
> Hello Larry,
> 
> On Tue, Dec 28, 2010 at 06:34:08PM -0600, Larry Finger wrote:
>> Mario Holbe wrote:
>>> on 2.6.37-rc7 the b43 driver crashes in hwrng_register(). This makes the
> ...
>>> This issue does also exist in 2.6.37-rc5.
>>> This issue does not exist in 2.6.36.2.
> ...
>>> [ 29.868632] BUG: unable to handle kernel paging request at 907cde0c
>>> [ 29.868640] IP: [<f8d543cc>] hwrng_register+0x4c/0x139 [rng_core]
> ...
>>> [ 29.868884] Call Trace:
>>> [ 29.868909] [<f8e5a870>] ? b43_wireless_core_init+0xd0c/0xdd6 [b43]
>>
>> I almost missed this posting.
> 
> You're welcome :)
> 
>> Please post wireless problems with
>> linux-wireless at vger.kernel.org for better visibility.
> 
> Sorry and thanks for completing the CC: list.
> 
>> I have a BCM4312 (14e4:4315) on a netbook that does not have this problem, thus
>> I will have to rely on your debugging. An additional difficulty is that the only
>> changes to b43 between 2.6.36 and 2.6.37 are adding an additional PCI ID, some
>> fixes to the SDIO driver, and some code for an 802.11n device. None of these
>> should affect your 802.11 b/g unit.
>>
>> Is it possible for you to bisect between 2.6.36 and 2.6.37-rc5? I wish I could
>> suggest some way to minimize the number of commits and builds, but the problem
>> could be anywhere.
> 
> To be honest, I never bisected such a huge amount of commits before and
> I'm somewhat afraid of doing it.
> 
> However, I think I'm able to nail the issue down to:
> commit 84c164a34ffe67908a932a2d641ec1a80c2d5435 which went to 2.6.37-rc1.
> Author: John W. Linville <linville@tuxdriver.com>
> Date:   Fri Aug 6 15:31:45 2010 -0400
> 
>     b43: move hwrng registration driver to wireless core initialization
> 
> Message-ID: <1281126412-5089-1-git-send-email-linville@tuxdriver.com>
> http://marc.info/?l=linux-wireless&m=128112658829379&w=2
> 
> I did 2 things:
> 1. I (manually) reverted 84c164a34ffe67908a932a2d641ec1a80c2d5435 from
>    2.6.37-rc7: The crash disappears, b43 is useable.
> 2. I added 84c164a34ffe67908a932a2d641ec1a80c2d5435 to 2.6.36.2: The
>    crash shows up as with vanilla 2.6.37-rc7.
> 
> I'm not sure why this is not reproducible for you, probably it has
> something to do with the VIA Nano having a second HW-RNG driven by
> via-rng. I experienced crashes in the past with earlier kernels when I
> tried to move RNGs around via /sys/devices/virtual/misc/hw_random, but
> never took the time to trace them down since I just got it working :)
> 
> Oh, I'm still able to trigger a crash with
> $ cat /sys/devices/virtual/misc/hw_random/rng_available
> on 2.6.37-rc7 without 84c164a34ffe67908a932a2d641ec1a80c2d5435 as well
> as on vanilla 2.6.36.2. Probably this is (better) reproducible for you?
> 
> I suspect both (the 84c164a34ffe67908a932a2d641ec1a80c2d5435 crash as
> well as the cat rng_available crash) having something to do with a
> partially uninitialized rng-struct, or better: parts of the rng-struct
> that are free()d too early (i.e. within its lifetime).

Thanks for finding the problem. Obviously, I did not go back far enough in the
record to find the commit that you implicate.

Please show the output of "egrep "B43|RNG|RANDOM" .config".

It should not matter, but please try the attached patch.

Larry
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: b43_fix_hwrng_not_enabled
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101229/1110c89c/attachment.ksh>
