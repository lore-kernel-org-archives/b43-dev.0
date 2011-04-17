From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 Apr 2011 23:34:43 +0200
Subject: A small error in b43
In-Reply-To: <alpine.DEB.2.01.1104171138421.18728@trent.utfs.org>
References: <alpine.DEB.2.01.1104162313180.18728@trent.utfs.org>
	<BANLkTimm-cJ6tvnuMpPvV4OPMmGXPZqCbA@mail.gmail.com>
	<alpine.DEB.2.01.1104170131420.18728@trent.utfs.org>
	<BANLkTin70cjZM1Rs5fL7mdByqrL0pL5__w@mail.gmail.com>
	<alpine.DEB.2.01.1104171138421.18728@trent.utfs.org>
Message-ID: <BANLkTikm=CWLgLzRfErtoCDsfW4gfvxjYg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 17 kwietnia 2011 20:52 u?ytkownik Christian Kujau
<lists@nerdbynature.de> napisa?:
> On Sun, 17 Apr 2011 at 12:27, Rafa? Mi?ecki wrote:
>> How did you test this speed? Was this iperf or something else? 1.2MBps
>> is 9.6 Mbps. I was able to achieve 15.2 Mbps (1.9 MBps) with the same
>> card.
>
> No, I did not involve any fancy tools, just netcat on both sides and "pv"
> inbetween:
>
> server$ nc -l 1234 | pv | dd of=/dev/null
> client$ dd if=/dev/zero | nc server 1234
>
> ..and "pv" prints out the data rate during the test (and "dd" does it too
> at the end.
>
>> What were the conditions? Were you far away from AP?
>
> The AP is a Linksys WRT54GL router (802.11abg) and I'm 3m away from it -
> the same distance as when it's booted in MacOS.
>
> I've just retested with MacOS again and with the "test" above I'm only
> getting 2.5MBps too, not quite the 3MBps I was talking about. The AP is
> quite old, so maybe I cannot get any higher than this anyway.
>
>> You can see my comparison for PHY rev4, which means for example
>> 14e4:432b: http://zajec.net/blog/view/2011-b43-n-phy-rev3plus-performance
>
> I'm going to give iperf a try and report back.

Thanks, I'll try nc && dd.

Did you connect your server by cable to the AP?

-- 
Rafa?
