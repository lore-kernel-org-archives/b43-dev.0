From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 14 Feb 2011 23:32:05 +0100
Subject: Notes on ssb specs and implementation
In-Reply-To: <1297720877.5683.3.camel@maggie>
References: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	<1297282621.9734.5.camel@maggie>
	<AANLkTinjDMSCqxWbAfjZO_JkfBZeRoAZOG5Pxvf1v8Xr@mail.gmail.com>
	<1297720877.5683.3.camel@maggie>
Message-ID: <AANLkTi=ayavFKJw9s-n-AvMDrtMxXdDcjV+BnoxO-qkE@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>

W dniu 14 lutego 2011 23:01 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Mon, 2011-02-14 at 20:51 +0100, Rafa? Mi?ecki wrote:
>> W dniu 9 lutego 2011 21:17 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
>> > On Wed, 2011-02-09 at 21:00 +0100, Rafa? Mi?ecki wrote:
>> >> Michael: was there any reasons why we didn't implement some parts of
>> >> core-disabling code?
>> >
>> > The function are complete as of latest reverse engineering efforts.
>> > Broadcom added stuff, if they do more stuff in latest code.
>>
>> Nothing has changed in specs since 2006:
>> http://bcm-v4.sipsolutions.net/Backplane?action=info
>> For some reason routines that were present even in 2006 was not implemented.
>
> Well, so the function was implemented prior to 2006. Which doesn't
> surprise me. It was one of the first ones.
>
>> I've just written missing parts,
>
> May I see them?

Sure. It's not for submission, so you have to expect magic values.


>> tested and it still does not work :|
>> The only advantage discovered so far is that ssb detects sth is wrong
>> with IM state:
>> [ 2661.449647] ssb: Timeout waiting for bitmask 01800000 on register
>> 0F90 to clear.
>>
>> I can see wl experiencing the same problems after loading b43. It
>> reads 0xf90 dozen of times in a row.
>
> And that's the thing why I always avoid touching that function.
> There's so much magic going on, so that completely weird things happen
> all the time. :D

Hm, that looks pretty easy and not really complicated. Of course, if
you figure out how it's working.

Personally I don't like for example description at
http://bcm-v4.sipsolutions.net/802.11/PHY . It's really messed in "Put
PHY Into Reset".
Section "Put PHY Into Reset" is really "How to reset PHY" and it
duplicates code of takine PHY out of reset.

We also have a lot of magic in ssb_device_enable. We reset SB and PHY
at the same time. I guess it introduces some optimization but makes it
harder to understand, especially if you try to understand implemented
code and look as specs at the same time.

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: ssb.initiator.patch
Type: application/octet-stream
Size: 1299 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110214/737fd896/attachment.obj>
