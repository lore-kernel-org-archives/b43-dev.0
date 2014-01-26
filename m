From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 26 Jan 2014 15:37:37 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs
 to determine BSS channel"
In-Reply-To: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
References: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
Message-ID: <CACna6ryDakV+oo6pW1BN5rcDPqR9=1khUHtYqmtTf85JR5x2Lg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Johannes Berg <johannes.berg@intel.com>
Cc: b43-dev <b43-dev@lists.infradead.org>

2013/3/26 Rafa? Mi?ecki <zajec5@gmail.com>:
> I've just finished bisecting wireless scanning regression I'm
> experiencing with my 14e4:432b (BCM4322) and b43 driver.
>
> The problem is getting my network visible in scanning results (iw dev
> wlan0 scan). I've to repeat scanning dozens of time to notice my AP.
> It's also well visible when using wpa_supplicant. It takes from 20s to
> 100s before I get the "Trying to authenticate with".
> The performance however is not affected. Once I connect to my network,
> I can transmit (tested with iperf) with stable 21.5Mb/s which is just
> great for 802.11g.
>
> After going back to the kernel before that commit it takes
> wpa_supplicant less than 2 seconds to connect to my WiFi network.
>
> My network is at channel 13, I still have to verify if it matters.
>
> Any thought about that?
>
>
> The first bad commit (I've verified manually after bisecting) appears to be:
>
> 0172bb75073e11a5aa9d8a953bdaefb8709f00c8 is the first bad commit
> commit 0172bb75073e11a5aa9d8a953bdaefb8709f00c8
> Author: Johannes Berg <johannes.berg@intel.com>
> Date:   Fri Nov 23 14:23:30 2012 +0100
>
>     cfg80211: use DS or HT operation IEs to determine BSS channel

This has been finally fixed in 64e5acb09ca6b50c97299cff9ef51299470b29f2 [0].

[0] http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=64e5acb09ca6b50c97299cff9ef51299470b29f2
