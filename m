From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 14 Feb 2011 20:51:54 +0100
Subject: Notes on ssb specs and implementation
In-Reply-To: <1297282621.9734.5.camel@maggie>
References: <AANLkTimfTt7kiwtSiPfE0kYRXwgHXJPAv19xuiv-M=NG@mail.gmail.com>
	<1297282621.9734.5.camel@maggie>
Message-ID: <AANLkTinjDMSCqxWbAfjZO_JkfBZeRoAZOG5Pxvf1v8Xr@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>

W dniu 9 lutego 2011 21:17 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Wed, 2011-02-09 at 21:00 +0100, Rafa? Mi?ecki wrote:
>> Michael: was there any reasons why we didn't implement some parts of
>> core-disabling code?
>
> The function are complete as of latest reverse engineering efforts.
> Broadcom added stuff, if they do more stuff in latest code.

Nothing has changed in specs since 2006:
http://bcm-v4.sipsolutions.net/Backplane?action=info
For some reason routines that were present even in 2006 was not implemented.


>> Michael: should we care about the way wl sets core specific flags? I
>> didn't dig into that moment in MMIO dumps, but as ssb_device_enable
>> implementation ignores flags at the end, it has to set flags somehow
>> differently on it's own.
>
> I have no idea. ssb_device_enable is very hairy and I'm not going
> to touch it without good reason and regression testing.
>
> You didn't tell us the important part: Does changing ssb_device_enable
> make it work?

I've just written missing parts, tested and it still does not work :|
The only advantage discovered so far is that ssb detects sth is wrong
with IM state:
[ 2661.449647] ssb: Timeout waiting for bitmask 01800000 on register
0F90 to clear.

I can see wl experiencing the same problems after loading b43. It
reads 0xf90 dozen of times in a row.

-- 
Rafa?
