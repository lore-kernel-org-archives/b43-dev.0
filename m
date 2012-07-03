From: Arend van Spriel <arend@broadcom.com>
Date: Tue, 3 Jul 2012 10:22:46 +0200
Subject: REGRESSION: [PATCH v2 0/9] bcma misc updates
In-Reply-To: <4FF2A2D4.9070308@hauke-m.de>
References: <1341013486-2520-1-git-send-email-hauke@hauke-m.de>
 <4FF29671.1020406@broadcom.com> <4FF2A2D4.9070308@hauke-m.de>
Message-ID: <4FF2ABD6.3070007@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, brcm80211-dev-list@broadcom.com

On 07/03/2012 09:44 AM, Hauke Mehrtens wrote:
>> I suspect it tries reading OTP instead of the external SPROM.
>> > 
>> > Gr. AvS
>> > 
> Hi Arend,
> 
> my BCM43224 uses a Sprom from the flash chip of the SoC, so it could be
> that something is wrong in the sprom reading, but I haven't touched the
> sprom code expect for using constants.
> 
> Do you know which patch is causing this issue?
> 
> Hauke
> 

I intended to bisect the series. I will let you know what I find.

Gr. AvS
