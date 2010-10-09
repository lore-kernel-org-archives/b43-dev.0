From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 9 Oct 2010 23:37:37 +0200
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <20101009213220.GU1593@home.pavel.comp>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
Message-ID: <AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/9 Paul Fertser <fercerpav@gmail.com>:
> On Sat, Oct 09, 2010 at 10:37:04PM +0200, G?bor Stefanik wrote:
>> On Sat, Oct 9, 2010 at 8:36 PM, Paul Fertser <fercerpav@gmail.com> wrote:
>> > On Sat, Oct 09, 2010 at 03:53:20PM +0400, Paul Fertser wrote:
>> >> The card works as expected with the sta driver, and b43 handles it nicely
>> >> after unloading wl and loading b43
>> >
>> > I'd expect lack of txpower adjustment for LP might very well be the cause for
>> > this. The specs seem to be ready so probably implementing this part would not
>> > be too hard.
>> >
>> > In case it might be of interest, ssb sprom contents attached.
>>
>> Please run: dmesg | grep -i "fatal dma error"
>> Chances are that you are seeing the PhoenixBIOS LP-PHY DMA bug.
>> (Lenovo S10 is known for showing the same bug.)
>
> Indeed there's a fatal dma error there in the non-working case (and switching
> to PIO doesn't help). But it doesn't happen after wl. Both dmesgs attached.
>

The PhoenixBIOS DMA problem is known not to appear if wl has been
loaded beforehand. Be patient, we are working on this. (But good to
know the S9 also reproduces it - it's probably less expensive than the
S10 for the team to buy.)

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
