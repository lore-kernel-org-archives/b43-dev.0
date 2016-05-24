From: benjamin deuker <deukerb@gmail.com>
Date: Tue, 24 May 2016 17:45:22 +0200
Subject: B43_PHY_AC config investigation and new b43 firmware via ASUS
Message-ID: <CAOWOSJ8mmWaChBeyqYVzCFjNLZL2EY6Q+ZzcScxq3muAM_vF0g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

Thanks for all your work on the b43 drivers and tools.

I have an ASUS PCE-AC68. This adapter works properly with the wl
broadcom driver in STA mode,
but i would use hotspot feature (AP mode).

In the Kconfig file of b43, we can read:
        bool "Support for AC-PHY (802.11ac) devices (BROKEN)"
        depends on B43 && B43_BCMA && BROKEN
        ---help---
          This PHY type can be found in the following chipsets:
          PCI: BCM4352, BCM4360

          Say N, this is BROKEN and crashes driver.

I would like investigate on this driver crash.

Where can I find some informations on B43_PHY_AC integration tests ?

For starters, I have checked the latest firmware.
It seems there is a new b43 firmware (802.204)  in:
http://dlcdnet.asus.com/pub/ASUS/wireless/RT-AC66U/GPL_RT_AC66U_30043803264.zip

You can extract this b43 firmware with an adaptation of mbuesch b43-tools:
https://github.com/deukerb/b43-tools

Be careful: this firmware has not been tested
^^^^^^^^^^

Thanks,

Benjamin
