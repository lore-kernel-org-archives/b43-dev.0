From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 29 Jun 2011 01:16:49 +0200
Subject: Regression in ssb pcicore with SoC
In-Reply-To: <4E07B2B2.4060204@hauke-m.de>
References: <4E07B2B2.4060204@hauke-m.de>
Message-ID: <BANLkTik_HdOn6Cw8VBROrKwo7csL9mTGAQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>, Larry Finger <Larry.Finger@lwfinger.net>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Thanks for reporting this and sorry for the problem.

W dniu 27 czerwca 2011 00:29 u?ytkownik Hauke Mehrtens
<hauke@hauke-m.de> napisa?:
> I tried linux-3.0-rc4 on my Asus WL-500GP and got a kernel panic because
> of a data bus error. This was caused by this commit you made:
>
> commit af335a6cbc3dfcba64ad31561c0da563d1c43a2d
> Author: Rafa? Mi?ecki <zajec5@gmail.com>
> Date: ? Wed Apr 27 18:21:34 2011 +0200
>
> ? ?ssb: pci: early fix for SPROM core index
>
> ? ?Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ? ?Signed-off-by: John W. Linville <linville@tuxdriver.com>
>
> My device has an PCI controller, in host mode and this device does not
> have a sprom in its address space, so ssb_pcicore_fix_sprom_core_index()
> should be be called. I tried to find the same function in Broadcom
> source, but did not had success.
>
> In the Broadcom open source code the pci init is done in
> ./driver/nicpci.c and all calls to sporm are done through
> pcie_war_pci_setup() which is our ssb_pcicore_pcie_setup_workarounds()
> in ssb. I think ssb_pcicore_fix_sprom_core_index() should be called from
> somewhere in ssb_pcicore_pcie_setup_workarounds().
>
> Could you please explain what you want to fix in
> ssb_pcicore_fix_sprom_core_index() ?.
>
> I will have a closer look at it tomorrow evening.

I don't think we will find the same workaround in brcm80211 code.
Broadcom stripped a lot from their driver and we can not use it as
reference for old (especially SSB) devices.

When I was looking for fix for DMA errors I've noticed closed source
driver performing a read than could be translated to the following ssb
code:
pcicore_read16(pc, SSB_PCICORE_SPROM(0));

So I've found documentation of such a operation in Larry's e-mail
Message-ID: <4BB81CAD.10602@lwfinger.net> [0] and implemented it in
ssb.

Larry documented this single workaround without really telling when it
should be called. I've analyzed MMIO dumps of closed wl driver and put
proper call in the same place wl does it. That's it.


Unfortunately it appears that hostmode PCI(e) cores does not have
SPROM shadowed in PCI(e) core. This results in the problem you've
experienced.

I believe all we need to do is to stop executing various workarounds
for hostmode PCI(e) core. I'll offer a patch later today.


[0] http://www.mail-archive.com/b43-dev at lists.infradead.org/msg00049.html

-- 
Rafa?
