From: Lukas Wunner <lukas@wunner.de>
Date: Thu, 26 May 2016 14:12:10 +0200
Subject: BCM4331 reset leads to wl lockup
Message-ID: <20160526121210.GA7006@wunner.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wlan-client-support-list@broadcom.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 1332647@gmail.com

Dear Broadcom support,

on Macs equipped with a BCM4331, a reset of the wireless core is needed
early in the boot process to prevent spurious IRQs and memory corruption.
This is achieved by the below patch.

Unfortunately the patch seems to cause a lockup with wl depending on the
amount of traffic transmitted: A user has reported that when sending only
pings, everything works fine. However a larger amount of traffic such as
opening a website in a browser causes the system to lock up.

The issue only occurs with wl, not the open source b43 driver. All the
patch does is set the reset bit ((1 * BCMA_CORE_SIZE) + BCMA_RESET_CTL)
in the wireless core's mmio space.

Please advise how the patch should be amended to avoid the lockups.

Thanks,

Lukas

-- >8 --
