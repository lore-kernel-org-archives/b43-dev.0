From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 10 Oct 2010 18:50:55 +0200
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <20101010072158.GV1593@home.pavel.comp>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
Message-ID: <AANLkTim63Nh2zABjrRSHy5Dn_rcXG++TaUqLv7EytbcC@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/10 Paul Fertser <fercerpav@gmail.com>:
> On Sat, Oct 09, 2010 at 11:37:37PM +0200, G?bor Stefanik wrote:
>> 2010/10/9 Paul Fertser <fercerpav@gmail.com>:
>> > Indeed there's a fatal dma error there in the non-working case (and switching
>> > to PIO doesn't help). But it doesn't happen after wl. Both dmesgs attached.
>> >
>>
>> The PhoenixBIOS DMA problem is known not to appear if wl has been
>> loaded beforehand. Be patient, we are working on this. (But good to
>> know the S9 also reproduces it - it's probably less expensive than the
>> S10 for the team to buy.)
>
> Even simply loading wl (without bringing the interface up etc) helps.
> Attached is a parsed mmiotrace of that (hail to nouveau). Alas simply
> replaying it (even with a 5ms delay inbetween writes) doesn't improve
> anything.

That definitely won't help - if you just brainlessly replay an
mmiotrace, the writes will end up on the wrong SSB cores. You also
need to replay PCI config space writes. AFAIK there has been a patch
earlier on the list to show PCI config space accesses in mmiotrace.

>
> And yes, i know remote debugging is usually a pain but i think i can not
> only provide ssh access but also some means to physically power-cycle the
> device (though it'd take some time to find necessary parts).
>
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav at gmail.com
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
