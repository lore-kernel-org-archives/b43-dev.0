From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 10 Dec 2010 19:47:54 +0100
Subject: b43 N PHY status report
In-Reply-To: <885729A3-72D4-4EFC-AAFE-D2B573E00ED9@ing.unibs.it>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
	<4CFFA112.7030800@lwfinger.net>
	<885729A3-72D4-4EFC-AAFE-D2B573E00ED9@ing.unibs.it>
Message-ID: <1292006874.3531.4.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Francesco Gringoli <francesco.gringoli@ing.unibs.it>
Cc: Larry Finger <larry.finger@lwfinger.net>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Fri, 2010-12-10 at 19:30 +0100, Francesco Gringoli wrote:

> [ 1117.516031] unregister_netdevice: waiting for wlan1 to become free. Usage count = 1
> 
> and the device is never release (by who?). I have to reboot.

That's a bug in the ipv6 code, upgrade your kernel :-)

johannes
