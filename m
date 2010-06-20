From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 20 Jun 2010 20:18:30 +0200
Subject: Problems with b43 wirelesss
In-Reply-To: <AANLkTimlXqCEWvn4bljiAKsNZkFtTPFgnOT5Gi-zFmDm@mail.gmail.com>
References: <AANLkTimIkTaIrdXHulE6YVnB3ZwWrMBCNnCK1SKdyctL@mail.gmail.com> 
	<AANLkTimvdtruvFaugHTYcSNhL5pBZXPYtzEF3qolO_qW@mail.gmail.com> 
	<AANLkTimxOgQySTag7u4DlZugbveWr7csDSAERkewAYhp@mail.gmail.com> 
	<4C1D67F0.5030509@polymtl.ca>
	<AANLkTimlXqCEWvn4bljiAKsNZkFtTPFgnOT5Gi-zFmDm@mail.gmail.com>
Message-ID: <AANLkTil8UURVEahP4W7u2sdRI6tZaFvfJrmL8yMYsOtL@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Jun 20, 2010 at 7:02 PM, Magnus Therning <magnus@therning.org> wrote:
> On Sun, Jun 20, 2010 at 01:59, William Bourque
> <william.bourque@polymtl.ca> wrote:
>>
>> I experiment te exact same behavior.
>> For some reason, it seems my card is unable to associate with some
>> (about 1/3) of access point I try. Wpa_supplicant would then give me
>> with the same error message as Magnus posted.
>
> Interesting that you only see it with some APs. ?I've only tried it
> with the one I have so I thought it'd be more catastrophic than it is
> then. ?Not that it helps me when my router falls in that third though
> :-(
>
>> I don't know if it has something to do with b43, I get the same kind of
>> behavior while using broadcom proprietary driver. When I use wl,
>> however, nothing will show in the logs, the device will associate to the
>> AP but no communication will be possible.
>
> It works perfectly well for me with the broadcom proprietary driver.
> Except of course that it pains my heart to have to use it.

Can you provide comparative mmiotraces?

>
>> Google seems to tell me there is several other people that have this
>> behavior on non-broadcom cards... it's just like something is fishy on
>> wpa authentification but for all card.
>
> Yes, I found a few posts on the interweb on this too. ?So maybe it's a
> problem in wpa_supplicant, or just somewhere in the stack of kernel
> modules that is shared between several wireless drivers.
>
> /M
>
> --
> Magnus Therning ? ? ? ? ? ? ? ? ? ? ? ?(OpenPGP: 0xAB4DFBA4)
> magnus?therning?org ? ? ? ? ?Jabber: magnus?therning?org
> http://therning.org/magnus ? ? ? ? identi.ca|twitter: magthe
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
