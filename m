From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 17 Jun 2010 11:12:48 -0500
Subject: installing b43 from wiki debian, but don't found wlan0 or eth2...
In-Reply-To: <AANLkTilnIIjK-F1cM3baCCLvMlYqCIb4xpVCkA7coBVb@mail.gmail.com>
References: <AANLkTilnIIjK-F1cM3baCCLvMlYqCIb4xpVCkA7coBVb@mail.gmail.com>
Message-ID: <4C1A4980.9020709@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/13/2010 11:51 PM, Paulo Riquelme wrote:
> hello list, i'm new in this list, and i don't speak english but i try
> explain my problem:
> - i install debian squeeze (i have kernel 2.6.32-5-amd64)
--snip--

> 3000 mBm)
> [ 2030.499364] cfg80211: Calling CRDA for country: US
> [ 2030.608612] Broadcom 43xx driver loaded [ Features: PMLS,
> Firmware-ID: FW13 ]
> 
> a question: must remove the ssb module and put it in the blacklist???
> 
> i wait for your answer, thank you, sorry for my bad english jej,

Your English is fine. I had no trouble understanding what you did.

I am not a Debian user and may have missed something, but your set of
commands look right.

You should not blacklist ssb. The b43 driver uses ssb for its low-level
operations, thus ssb is necessary. Tou should not have to modprobe b43
either. Does your blacklist contain either b43 or ssb? If so, remove the
entry.

Your dmesg output ends just where I would expect to see any error messages.

Please reboot and post the output of

lsmod | egrep "ssb|b43"
dmesg | egrep "ssb|b43"

Larry
