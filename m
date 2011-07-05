From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 5 Jul 2011 11:46:26 +0200
Subject: b43 and BCM4322 reports full signal strength for all AP
In-Reply-To: <4E12D87D.8010606@gmail.com>
References: <4E0ACF42.5020300@gmail.com>
	<4E12D87D.8010606@gmail.com>
Message-ID: <CACna6rwfB_3K1miJ3E_dBcm2wU9zTGoEFwERUWz-qFTbSxQctQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/7/5 Thomas Zwaagstra <gurutonic@gmail.com>:
> I'm running B43 from compat-wireless-3.0_rc4-r4 with the BCM4322 in my
> macbook pro 5,2. ?It seems to work, except that every AP shows full
> signal strength / quality. Is this a known issue or should I be doing
> something to debug this? Beyond that, the connection is sometimes
> unstable and slower than broadcom's WL.

We don't have calibration code yet, so connection can be less
stable/slower. Unfortunately I won't start working on it for some time
as there are different issues I want to address first.

As for info about signal, it's possible we incorrectly parse headers
coming from firmware. I've to check this issue with my hardware, then
I'll be able to say sth more.


> However, monitor mode and injection work great on B43. ?Scanning/init
> also seems to be much faster using B43. ?With WL, it takes significantly
> longer to connect to my AP after boot or waking from suspend.
>
> Can someone also verify that I'm using the correct firmware?
>
> lspci: 04:00.0 Network controller: Broadcom Corporation BCM4322
> 802.11a/b/g/n Wireless LAN Controller (rev 01)
>
> 04:00.0 0280: 14e4:432b (rev 01)
>
> Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
> b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)

Your firmware looks alright.

-- 
Rafa?
