From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 10 Jun 2013 16:54:09 +0200
Subject: [DEFECT] iw: No output if passive scanning is requested
In-Reply-To: <20130610182317.3beb2841@lenovo-laptop>
References: <20130610182317.3beb2841@lenovo-laptop>
Message-ID: <CACna6rwOHS26o3gPMy5nKag8Dm0pYaEOi6B+kuxtoLfVrRZOrA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Fran=C3=A7ois_Ravaillac?= <neutrino.nuovo@yahoo.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

2013/6/10 Fran?ois Ravaillac <neutrino.nuovo@yahoo.com>:
> Using b43 driver with newer kernels (namely, 3.8-1-686-pae from Debian
> and 3.10.0-rc4 from git) it isn't possible to perform passive scanning
> (in 2.4GHz band) using 'iw' tool. The command 'iw dev wlan0 scan
> passive' doesn't print any output. At the same time, a usual scan with
> sending probe requests ('iw wlan0 scan' or 'iwlist wlan0 scan') does
> work as expected.
>
> The radio module I'm using is
> 05:00.0 Network controller [0280]: Broadcom Corporation BCM4312
> 802.11b/g LP-PHY [14e4:4315] (rev 01)
>
> Copy of dmesg, lspci, lsmod, 'iw phy0 info' outputs and kernel config file
> is attached.
>
>
> P.S. I'm not a developer nor programmer, but I'm ready to help to make
> linux better :)

Hm, this is very interesting. Recently I've discovered problem with
finding AP working on channel 13. It turned out to be a regression
caused by
> Scanning regression since "cfg80211: use DS or HT operation IEs to determine BSS channel"
http://lists.infradead.org/pipermail/b43-dev/2013-March/003003.html

I think it can be related. I'll try to take a look at this in free
time, but don't promise anything soon. Thanks for your report anyway.

-- 
Rafa?
