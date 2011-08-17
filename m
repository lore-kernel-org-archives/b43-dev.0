From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 17 Aug 2011 20:27:23 +0200
Subject: Report on bcma with 14e4:4353 (BCM43224)
In-Reply-To: <4E3420E9.6080603@lwfinger.net>
References: <4E3420E9.6080603@lwfinger.net>
Message-ID: <CACna6ryErHY+OyAnvc9+MYArb5mXpSdadOPADsQOBz796UqSUw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

W dniu 30 lipca 2011 17:19 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> I'm using a recent pull from wireless-testing - 'git describe' results in
> master-2011-07-26-150-g4ea94a9.
>
> The driver is working well with reasonable performance. Using tcpperf, I get
> 8-10 Mb/s upload on an 802.11g connection. The connection has been up for 17
> hours with no disconnects.

Thanks for your testing, I appreciate it! I was busy recently with
other stuff, so didn't have much time to reply and test everything
myself.


> A minor annoyance is that the driver does not autoload on boot and had to be
> manually modprobed. AFAIK, I don't have any blacklisting or other
> configuration parameters that would cause this. Furthermore, I don't see
> anything in the driver code that would cause this. Does autoload work on
> your system?

I've everything blacklisted (ssb, bcma, b43, wl, brcmsmac), so I
didn't even notice that. However I got some reports (2 of them) that
b43 doesn't auto load. I've to take a look at it, however I've no idea
yet on what may be causing it.


> A more serious problem is that the driver does not work on my 802.11n AP
> that is set for "up to 270 Mbps at 2.4 GHz". It will authenticate and
> associate, but the throughput is minimal. It also gets the "PHY transmission
> error" messages. None occur with 802.11g. I would guess some kind of error
> in the HT40 settings.

My network (AP) is set up to work in 802.11g mode and I've performed
first tests today. Not good:
[ ID] Interval       Transfer     Bandwidth
[  4]  0.0-124.5 sec  10.8 MBytes    724 Kbits/sec
I've noticed that connection dies when I force network rate to 54M.
Same for 48M and 9M. Connection works fine for 1M, 2M, 11M.
So this is again OFDM vs. CCK problem.

I didn't see any "PHY transmission error" messages however (maybe it's
matter of firmware? 666.2 here).


Could you take a look if anything has changed in phy_ctl1 in recent
drivers? Do you have any other suspicions?

-- 
Rafa?
