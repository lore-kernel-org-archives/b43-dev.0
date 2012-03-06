From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 6 Mar 2012 22:04:01 +0100
Subject: [PATCH] b43: prevent firmware on bcm5354 from taking over wrong
 GPIO pins
In-Reply-To: <1330458306-13169-1-git-send-email-hauke@hauke-m.de>
References: <1330458306-13169-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rwzMas9239mUGRgOcNZ19+eL1MM59tPvcEdHL7ncnmX+Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, Larry.Finger@lwfinger.net, florian@openwrt.org, m@bues.ch, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2012/2/28 Hauke Mehrtens <hauke@hauke-m.de>:
> When using the bcm5354 (Soc with integrated LP-PHY Wifi) with a recent
> firmware >= 478.104 it runs out of memory after a very short time in
> OpenWrt after doing an active scan or any thing else where packages are
> send. This was cased by a gpio misconfiguration, the firmware triggered
> the GPIO pins used for buttons on some devices and that caused an other
> driver (OpenWrt diag) listening for these buttons irqs to send many
> messages to the user space.
> This patch fixes the bug for my devices (Asus WL-520GU) and makes it
> work with firmware 666.2. Now the firmware just uses LED GPIO pin
> number 1 and not the button pins any more.
>
> This is the GPIO Pin layout used on my device, see [0].
> GPIO pin layout:
> pin# ? ?name ? ?type
> 0 ? ? ? power ? led
> 1 ? ? ? wlan ? ?led
> 2 ? ? ? reset ? button
> 3 ? ? ? ses ? ? buttom
>
> This is the nvram configuration output of "nvram show |grep gpio"
>
> related nvram configuration:
> wl0gpio2=11
> wl0gpio3=11
> wl0gpio0=11
> wl0gpio1=0x02
> reset_gpio=2
>
> [0]: https://dev.openwrt.org/browser/trunk/package/broadcom-diag/src/diag.c

Hauke: could you provide me

pr_info("Init value of B43_GPIO_CONTROL: 0x%X\n",
ssb_read32(gpiodev, B43_GPIO_CONTROL)
);

please? You can put proposed code right after
gpiodev = b43_ssb_gpio_dev(dev);

-- 
Rafa?
