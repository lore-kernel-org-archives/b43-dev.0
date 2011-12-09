From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 09 Dec 2011 10:44:37 -0600
Subject: Performance of BCM43224 (14e4:4353)
In-Reply-To: <4EE1E2AC.8030002@broadcom.com>
References: <4EE15A4E.1090500@lwfinger.net> <4EE1E2AC.8030002@broadcom.com>
Message-ID: <4EE23AF5.8000400@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Francesco Gringoli <francesco.gringoli@ing.unibs.it>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On 12/09/2011 04:27 AM, Arend van Spriel wrote:
>
> Hi Larry
>
> Could you perform your benchmark test on brcmsmac without the bcma
> patches. It kind of surprises me that we are that far off compared to
> the wl driver.

I wondered about that myself. Upon investigation, my test with bcma/brcmsmac 
never worked. Without the patches, my netperf numbers for brcmsmac are RX 40.0 
and TX 59.7 Mbps.In all cases, the reported number is the maximum of 10 tries of 
3 sec each.

With the patches, my dmesg contains the following:

[  908.282281] bcma: Bus registered
[  908.353242] brcmsmac bcma0:0: mfg 4bf core 812 rev 23 class 0 irq 22
[  908.380164] ieee80211 phy0: wl0: brcms_b_attach: si_attach failed
[  908.380184] ieee80211 phy0: wl0: brcms_b_attach: failed with err 11
[  908.380192] ieee80211 phy0: wl0: brcms_c_attach: failed with err 11
[  908.380316] ieee80211 phy0: brcmsmac: attach() failed with code 11
[  908.380379] brcmsmac: brcms_bcma_probe: brcms_attach failed!
[  908.381715] brcms_module_init: register returned 0

As b43 is also loaded, which may be a second problem, it is run instead of brcmsmac.

Larry
