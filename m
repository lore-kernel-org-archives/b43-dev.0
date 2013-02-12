From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue, 12 Feb 2013 23:36:55 +0100
Subject: b43 gpio
Message-ID: <511AC407.5030707@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

There are some issues with the b43_gpio_init() method in b43 [0], [1],
[2], [3]. When I compare the spec [4] with the code in brcmsmac
brcms_c_gpio_init() it is very different. Is this spec still correct for
the recent ucode versions e.g. 666.2?

> Start with a GPIO Mask value of 0x1F and GPIO Set value of 0xF (Note >
that 0xF corresponds with the LEDs GPIO pins).
This is strange to me, shouldn't only the gpios used by this wifi chip
be activated?

Hauke

[0]: http://lists.infradead.org/pipermail/b43-dev/2012-February/002431.html
[1]: https://dev.openwrt.org/ticket/11120
[2]: https://dev.openwrt.org/ticket/12906
[3]: https://dev.openwrt.org/ticket/12838
[4]: http://bcm-specs.sipsolutions.net/GPIO
