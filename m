From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 20 Feb 2012 18:57:32 -0600
Subject: [RFC] b43: fix memory leak on bcm5354
In-Reply-To: <1329781099-17342-1-git-send-email-hauke@hauke-m.de>
References: <1329781099-17342-1-git-send-email-hauke@hauke-m.de>
Message-ID: <4F42EBFC.4060307@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, m@bues.ch

On 02/20/2012 05:38 PM, Hauke Mehrtens wrote:
> When using the bcm5354 with a recent firmware>= 478.104 it runs into a
> memory very shortly after doing an active scan or any thing else where

You are missing a word after memory.

> packages are send. This was cased by a gpio misconfiguration, the
> firmware triggered the GPIO pins used for buttons on some devices and
> that caused an other driver (OpenWrt diag) listening for these buttons
> to send many user space messages.
> This patch fixes the bug for my devices (Asus WL-520GU) and makes it
> work with firmware 666.2, but I do not know if this patch is correct.
> The spec for this part is out of date:
> http://bcm-specs.sipsolutions.net/GPIO

I just updated the specs based on additional info I found. Everything I see say 
that there are 4 bits for the LEDs. Do you have a source for what you posted below?

>
> GPIO pin layout:
> pin#	name	type
> 0	power	led
> 1	wlan	led
> 2	reset	button
> 3	ses	buttom
>
> related nvram configuration:
> wl0gpio2=11
> wl0gpio3=11
> wl0gpio0=11
> wl0gpio1=0x02
> reset_gpio=2

Larry
