From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 12 May 2015 09:35:12 -0500
Subject: Broadcom BCM4352 WIFI problem - Fedora 21
In-Reply-To: <1431439680.17810.4.camel@atos.atos>
References: <1431439680.17810.4.camel@atos.atos>
Message-ID: <55520FA0.1090205@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/12/2015 09:08 AM, Goran Gojic wrote:
> Hello,
>
> OS:  Fedora 21 (kernel 3.19.5.200).
>
> Can someone please help me to enable WIFI functionality with my  2015
> DELL XPS 13.
>
> lspci -nn -d 14e4:
>
> Network controller [0280]: Broadcom Corporation BCM4352 802.11ac
> Wireless Network Adapter [14e4:43b1] (rev 03)
>
> Please assist.

What I consider to be the definitive source, 
https://wireless.wiki.kernel.org/en/users/Drivers/b43, says that only Broadcom's 
proprietary driver wl is available for that device. You can get that at 
https://www.broadcom.com/support/802.11/linux_sta.php. Of course, you will need 
to build it for your system. If you need help building an out-of-kernel module, 
the best place for help with that is your distro's forum.

Larry
