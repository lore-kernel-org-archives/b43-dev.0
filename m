From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 24 Aug 2011 23:11:26 +0200
Subject: BCM4321 support
In-Reply-To: <CAM0=5Gvq1d6toSO+P_Z2_EYpMafJtSA84StBmjYZYh85tjtM8Q@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5Gvq1d6toSO+P_Z2_EYpMafJtSA84StBmjYZYh85tjtM8Q@mail.gmail.com>
Message-ID: <CACna6rwu74OYvQXgswRaeBLOQmDZSxQ9ZbuhBDEjOGA3Ua7-vQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 24 sierpnia 2011 20:32 u?ytkownik Octavian Voicu
<octavian.voicu@gmail.com> napisa?:
> 2011/8/24 Rafa? Mi?ecki <zajec5@gmail.com>:
>> 2011/8/24 Octavian Voicu <octavian.voicu@gmail.com>:
>>> I also see some invalid misc packets. Any concerns about that?
>>
>> I didn't hear about that, what exactly is that?
>
> It's from the iwconfig output:
>
> wlan0 ? ? IEEE 802.11bg ?ESSID:"swn"
> ...
> ? ? ? ? ?Rx invalid nwid:0 ?Rx invalid crypt:0 ?Rx invalid frag:0
> ? ? ? ? ?Tx excessive retries:0 ?Invalid misc:53 ? Missed beacon:0
>
> iwconfig man page says:
> ? ? ? Invalid misc
> ? ? ? ? ? ? ?Other packets lost in relation with specific wireless operations.

Thanks, I'll add this to my (long) TODO list. You can take a look at
this if you have some free time, it'll be welcome.


> Where is the latest wireless tree? Is it just Linus' vanilla linux.git
> tree, or do you have a b43 dev tree?

I send my patches to the John and linux-wireless ML.
For the most of the time wireless-testing was the tree getting all the
recent patches. Since about a month it seems John started taking
patches into wireless-next (unless it's urgent fix for "just"
wireless). After some time it seems John is merging wireless-next into
wireless-testing.
We are considering creating git tree for b43 development.


> About sending patches, when I'll have something meaningful, do I send
> it to LKML, or here for review?

I prefer to use both: b43-dev and linux-wireless. Using just LKML is
not enough, I think noone will take patches from that.

I don't have anything against sending patches also directly to John,
he always nicely gives ppl few days for reviewing (and NACKing ;) ).
But if you really prefer, you can just send patches to b43-dev and
wait until someone (me?) take them and repost to John.

-- 
Rafa?
