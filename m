From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 7 Feb 2012 08:04:24 +0100
Subject: BCM4331 fails to associate after suspend
In-Reply-To: <20120206223447.GE31938@ubuntu-macmini>
References: <20120203222818.GA3749@ubuntu-mba> <4F2D0C07.1010704@broadcom.com>
 <20120204142502.GA10858@ubuntu-mba>
 <CACna6ryR2xm2EAJaV4vCO8WebR5pXCyFknEMrf8ynVF+HYrxTw@mail.gmail.com>
 <20120206173757.GC31938@ubuntu-macmini>
 <4F302647.2070102@hauke-m.de>
 <20120206223447.GE31938@ubuntu-macmini>
Message-ID: <CACna6rx7E9tM82iyYP=eRnTU+QZA1rMfdk8vNnX5k1_jbc5DqQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Arend van Spriel <arend@broadcom.com>, Scott Sanbar <scott.sanbar@gmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

2012/2/6 Seth Forshee <seth.forshee@canonical.com>:
> On Mon, Feb 06, 2012 at 08:13:11PM +0100, Hauke Mehrtens wrote:
>> According to the Broadcom SDK for SoCs bcma_pcicore_serdes_workaround()
>> should be called when coming out of standby/hibernate.
>> The code wl uses to do the same thing as bcma does is open source. You
>> find it in the GPL package of many Broadcom based Wifi Routers.
>
> Thanks for the suggestion. Unfortunately calling
> bcma_pcicore_serdes_workaround() during resume doesn't help. I'll look
> at the wl code to see if I can learn anything there.

Can you try


diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
index febbc0a..a097a26 100644
--- a/drivers/bcma/main.c
+++ b/drivers/bcma/main.c
@@ -267,6 +267,13 @@ int bcma_bus_resume(struct bcma_bus *bus)
                bcma_core_chipcommon_init(&bus->drv_cc);
        }

+       /* Init PCIE core */
+       core = bcma_find_core(bus, BCMA_CORE_PCIE);
+       if (core) {
+               bus->drv_pci.setup_done = false;
+               bcma_core_pci_init(&bus->drv_pci);
+       }
+
        list_for_each_entry(core, &bus->cores, list) {
                struct device_driver *drv = core->dev.driver;
                if (drv) {
