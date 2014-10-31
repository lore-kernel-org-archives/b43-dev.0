From: Evgeniy Dushistov <dushistov@mail.ru>
Date: Sat, 1 Nov 2014 01:41:24 +0300
Subject: slow connection
In-Reply-To: <CACna6rw8JdXqikBp=VpALDR-xKGAgf32x5W7ktr2Cj1L+dgePw@mail.gmail.com>
References: <20141031190018.GA8295@fifteen>
 <CACna6rw8JdXqikBp=VpALDR-xKGAgf32x5W7ktr2Cj1L+dgePw@mail.gmail.com>
Message-ID: <20141031224124.GA9697@fifteen>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, Oct 31, 2014 at 09:12:39PM +0100, Rafa? Mi?ecki wrote:
> > So it is 3.18 Mbit/s vs 71.57 MBit/s under the same conditions,
> > and the only difference is OS.
> >
> > Any hints, how to speedup connection under linux?
> 
> We have some improvements for HT-PHY (BCM4331) in 3.18-rc1 (and
> newer). Could you try it?
> 
> b43 is still limited to 802.11g speeds, but I hope it will be better
> than 3.18 Mb/s.
> 

I got:
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 2147M  100 2147M    0     0  2246k      0  0:16:18  0:16:18 --:--:-- 1842k

real    16m18.774s
user    0m27.340s
sys     0m36.350s

This is ~ 17.55Mbit/s for file transfer.
What is much, much better. Thank you.

Are these changes(3.16 [slow b43] vs 3.18 [fast b43]) located 
in drivers/net/wireless/b43?
I would like to port them(changes) to my 3.16 kernel.

By the way, during test connection was hang,
and I can not ping any machine outside of my notebook.

I rmmod/modprobe b43, restart wpa_supplicant/dhcpcd
and all back to normal. 
And after restart I was unable to reproduce it(bug).
dmesg also show nothing. Any hints how to debug such
kind of issues, if I see it again?


-- 
/Evgeniy
