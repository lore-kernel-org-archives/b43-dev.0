From: Magnus Therning <magnus@therning.org>
Date: Thu, 24 Jun 2010 23:27:27 +0100
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTikTuXmetpuYBFcINQupADFNkBsZql5unUbs5ikw@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com>
	<AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com>
	<AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com>
	<4C1D67F0.5030509@polymtl.ca>
	<AANLkTimlXqCEWvn4bljiAKsNZkFtTPFgnOT5Gi-zFmDm@mail.gmail.com>
	<AANLkTil8UURVEahP4W7u2sdRI6tZaFvfJrmL8yMYsOtL@mail.gmail.com>
	<AANLkTikSK3zNyWPRhHPZeFrfO3iQW97w9CCoUqolLf-z@mail.gmail.com>
	<AANLkTikTuXmetpuYBFcINQupADFNkBsZql5unUbs5ikw@mail.gmail.com>
Message-ID: <AANLkTin6z2fj1nhjEqqyJTPZI6NBM4EkMCoftyCD1uAN@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/20 G?bor Stefanik <netrolller.3d@gmail.com>:
> 2010/6/20 Magnus Therning <magnus@therning.org>:
>> 2010/6/20 G?bor Stefanik <netrolller.3d@gmail.com>:
>>> On Sun, Jun 20, 2010 at 7:02 PM, Magnus Therning <magnus@therning.org> wrote:
>> [...]
>>>> It works perfectly well for me with the broadcom proprietary driver.
>>>> Except of course that it pains my heart to have to use it.
>>>
>>> Can you provide comparative mmiotraces?
>>
>> I'm sure I could, if I only knew how :-)
>>
>> Point me to some information about how it's done and I'll try to get it
>> done today.
>>
>> /M
>
> Check out http://www.mjmwired.net/kernel/Documentation/tracers/mmiotrace.txt
>
> When tracing b43, it is important to also unload ssb before starting the
> trace - it is ssb that does the IO mapping for b43, so if ssb remains
> loaded, mmiotrace won't catch the MMIO mappings of the device.

I've uploaded my traces to

  http://therning.org/magnus_files/b43-trace.txt.xz
  http://therning.org/magnus_files/wl-trace.txt.xz

Enjoy!

I should probably mention that I've upgraded my kernel to

  % uname -a
  Linux ohann 2.6.34-ARCH #1 SMP PREEMPT Sat Jun 19 00:07:49 CEST 2010
x86_64 Intel(R) Core(TM) i5 CPU M 430 @ 2.27GHz GenuineIntel GNU/Linux

It does seem to make a difference to the behaviour of the b43 module.  I no
longer get the repeated failed attempts to re-connect with the AP.  Instead NM
is telling me I have a steady connection, but no data is transferred.

/M

-- 
Magnus Therning                        (OpenPGP: 0xAB4DFBA4)
magnus?therning?org          Jabber: magnus?therning?org
http://therning.org/magnus         identi.ca|twitter: magthe
