From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 Apr 2011 12:27:17 +0200
Subject: A small error in b43
In-Reply-To: <alpine.DEB.2.01.1104170131420.18728@trent.utfs.org>
References: <alpine.DEB.2.01.1104162313180.18728@trent.utfs.org>
	<BANLkTimm-cJ6tvnuMpPvV4OPMmGXPZqCbA@mail.gmail.com>
	<alpine.DEB.2.01.1104170131420.18728@trent.utfs.org>
Message-ID: <BANLkTin70cjZM1Rs5fL7mdByqrL0pL5__w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 17 kwietnia 2011 10:35 u?ytkownik Christian Kujau
<lists@nerdbynature.de> napisa?:
> On Sun, 17 Apr 2011 at 09:06, Rafa? Mi?ecki wrote:
>> http://wireless.kernel.org/en/users/Drivers/b43 , we report BCM4322 as
>> supported in 2.6.39+. With this newer kernel you should get 54M TX.
>
> FWIW, I booted 2.6.39-0.rc3.git2.0.fc16.x86_64 and now it's at 1.2MBps,
> which is not great but a huge impovement. Oh, and for the record: the
> PCI-ID for this BCM4322 chip is 14e4:432b.

How did you test this speed? Was this iperf or something else? 1.2MBps
is 9.6 Mbps. I was able to achieve 15.2 Mbps (1.9 MBps) with the same
card.

What were the conditions? Were you far away from AP?

You can see my comparison for PHY rev4, which means for example
14e4:432b: http://zajec.net/blog/view/2011-b43-n-phy-rev3plus-performance

-- 
Rafa?
