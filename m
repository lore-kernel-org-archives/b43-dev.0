From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 11 Oct 2010 09:37:23 +0200
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
In-Reply-To: <AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
References: <20101009115320.GR1593@home.pavel.comp>
	<20101009183637.GT1593@home.pavel.comp>
	<AANLkTi=c8LfxugA0oN-kPQevd3ZpD=2644af1qZKOjDO@mail.gmail.com>
	<20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
Message-ID: <AANLkTikeAqkAe-KbZDy8iZFSShRsG-xknfQ3JxLkwfGz@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/11 Larry Finger <Larry.Finger@lwfinger.net>:
> On Sun, Oct 10, 2010 at 10:03 AM, Paul Fertser <fercerpav@gmail.com> wrote:
>>
>> On Sun, Oct 10, 2010 at 08:39:04AM -0700, Larry Finger wrote:
>>
>> > On my HP Mini 110 netbook, those fixes got rid of the DMA errors. Will
>> > they allow your S9 to cold boot b43?
>>
>> I wonder if those DMA errors are just a sign of some other problem because
>> the driver automatically switches to PIO but it doesn't help.
>
>
> On most machines, the automatic switch to PIO does not work. You probably
> need to load the driver with PIO=1.

BTW why it does not work? I know we have bug in form of registering
mac80211 device and then adjusting some variables, that does not work.
However pio should not be affected...

-- 
Rafa?
