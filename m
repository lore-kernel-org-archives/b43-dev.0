From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 06 May 2012 10:02:16 -0500
Subject: multiple SSID support (in BCM4318)
In-Reply-To: <op.wdviz4o2trbvx2@steve>
References: <op.wdviz4o2trbvx2@steve>
Message-ID: <4FA69278.2050203@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/06/2012 01:29 AM, Tom?? Hnyk wrote:
> Hello all,
> are multiple SSID supported (especially on BCM4318)? I could not find the answer
> through googling.
>
> By tw way, on your page, you say "BCM4318 chipset: AP mode does not work because
> of packet loss in high transmission rates. Hard to debug & fix." IS it still
> true? It seems to me it works fine, but I have been trying it only for a while.
> Regards,
> Tomas

To my knowledge, there have been no fixes specific for the BCM4318 that were 
aimed at fixing the packet loss at high transmission rates; however, there have 
been a lot of fixes for b43. Perhaps one or more of them helped that problem. 
Your tests will likely tell.

As to the multiple SSID question, that will be a function of mac80211 and 
friends. Comment #3 of http://forums.freebsd.org/showthread.php?t=24268 seems to 
have a prescription for using nl80211 to accomplish that. If that posting 
doesn't answer your question, direct further inquiries to 
linux-wireless at vger.kernel.org.

Larry
