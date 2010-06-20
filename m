From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 20 Jun 2010 20:37:23 +0200
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTikSK3zNyWPRhHPZeFrfO3iQW97w9CCoUqolLf-z@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com> 
	<AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com> 
	<AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com> 
	<4C1D67F0.5030509@polymtl.ca>
	<AANLkTimlXqCEWvn4bljiAKsNZkFtTPFgnOT5Gi-zFmDm@mail.gmail.com> 
	<AANLkTil8UURVEahP4W7u2sdRI6tZaFvfJrmL8yMYsOtL@mail.gmail.com> 
	<AANLkTikSK3zNyWPRhHPZeFrfO3iQW97w9CCoUqolLf-z@mail.gmail.com>
Message-ID: <AANLkTikTuXmetpuYBFcINQupADFNkBsZql5unUbs5ikw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/20 Magnus Therning <magnus@therning.org>:
> 2010/6/20 G?bor Stefanik <netrolller.3d@gmail.com>:
>> On Sun, Jun 20, 2010 at 7:02 PM, Magnus Therning <magnus@therning.org> wrote:
> [...]
>>> It works perfectly well for me with the broadcom proprietary driver.
>>> Except of course that it pains my heart to have to use it.
>>
>> Can you provide comparative mmiotraces?
>
> I'm sure I could, if I only knew how :-)
>
> Point me to some information about how it's done and I'll try to get it done
> today.
>
> /M

Check out http://www.mjmwired.net/kernel/Documentation/tracers/mmiotrace.txt

When tracing b43, it is important to also unload ssb before starting
the trace - it is ssb that does the IO mapping for b43, so if ssb
remains loaded, mmiotrace won't catch the MMIO mappings of the device.

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
