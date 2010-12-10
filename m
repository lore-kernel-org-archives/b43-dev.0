From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 10 Dec 2010 13:02:22 -0600
Subject: b43 N PHY status report
In-Reply-To: <1292006874.3531.4.camel@jlt3.sipsolutions.net>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>	
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>	
	<4CFFA112.7030800@lwfinger.net>	
	<885729A3-72D4-4EFC-AAFE-D2B573E00ED9@ing.unibs.it>
	<1292006874.3531.4.camel@jlt3.sipsolutions.net>
Message-ID: <4D02793E.2050004@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Francesco Gringoli <francesco.gringoli@ing.unibs.it>, =?UTF-8?B?UmFmYQ==?= =?UTF-8?B?xYIgTWnFgmVja2k=?= <zajec5@gmail.com>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 12/10/2010 12:47 PM, Johannes Berg wrote:
> On Fri, 2010-12-10 at 19:30 +0100, Francesco Gringoli wrote:
> 
>> [ 1117.516031] unregister_netdevice: waiting for wlan1 to become free. Usage count = 1
>>
>> and the device is never release (by who?). I have to reboot.
> 
> That's a bug in the ipv6 code, upgrade your kernel :-)

I would not have seen that as IPv6 is disabled in my kernels.

Larry
