From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Wed, 2 Feb 2011 12:55:29 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <20110202101151.00007105@unknown>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown> <20110117145106.00001ec8@unknown>
	<20110118115855.00007877@unknown> <4D35A506.3090702@lwfinger.net>
	<20110119140328.00002dd2@unknown> <20110121165137.000016ff@unknown>
	<4D39C0B9.8050708@lwfinger.net> <20110121225408.00003e2c@unknown>
	<4D3A050D.3090106@lwfinger.net> <20110122114834.00007abc@unknown>
	<20110201154135.00006f0b@unknown> <4D486FC0.3020507@lwfinger.net>
	<20110202101151.00007105@unknown>
Message-ID: <20110202125529.00002e75@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 2 Feb 2011 10:11:51 +0100
dylan cristiani <d.cristiani@idem-tech.it> wrote:

> On Tue, 01 Feb 2011 14:40:32 -0600
> Larry Finger <Larry.Finger@lwfinger.net> wrote:
> 
> > On 02/01/2011 08:41 AM, dylan cristiani wrote:
> > > i have some news: i went back to kernel version 2.6.26 and it
> > > worked so i moved forward kernel by kernel and it works till
> > > kernel 2.6.32; first kernel that shows up the problem is 2.6.33
> > > and, at module loading time i can see for the first time, after
> > > loading firmware, the following debug info (don't know if it's
> > > helpful but same message happears in every non-working kernel
> > > from 2.6.33 to 2.6.37):
> > > 
> > > "b43-phy0 warning: Invalid max-TX-power value in SPROM"
> > 
> > Between 2.6.32 and 2.6.33, there were only 6 patches that touched
> > SSB. Two of them (e33761e and 3ba6018) affected SPROM writing, one
> > (37ace3d) was only for PCMCIA, and one (ac2752c) only affected
> > logging of a core scan. The two remaining are 391ae22 that fixed an
> > SDIO typo and 8b45499 that put host pointers in a union should be
> > the only ones that needed testing.
> > 
> > Those patches are attached. Try each of them in turn to 2.6.33 with
> > a 'patch -p1 -R < patch_name' If it doesn't help, use the same
> > command without the "-R" to reapply. I'm guessing that 8b45499 is
> > more likely to be the problem, and I would try it first.
> > 
> > Larry
> Hi Larry i tryied to reverte two patches you sent me but nothing
> happens; but i discovered interesting behaviour: the mac address of
> the module is:
> 00:0B:B6....
> but starting from 2.6.33 the chip is read as:
> 14:0B:B6....
> (maybe the '0x14' value could be '20dBm' related to the max-TX-power
> value.....); so it seems that the driver is faulty reading the chip
> properties from sprom (in fact till the 2.6.32 the mac address was
> correct and the max-TX-power warning wasn't issued); i noticed that
> into drivers/ssb/pcmcia.c tha way to read properties from the chip is
> changed also; hope this helps
Hi larry i located the problem: at ssb level the info (MAC,
max-TX-power and friends) are ok, while when at b43 driver level there
are some data corruption; here comes the log of some debug i put into
drivers followed by the code slices where i put the debug; i'm sure
i'll find the trouble:

boot log
...
MMMMAC0 = 0
MMMMAC1 = b
MMMMAC1 = 6b
MMMMAC1 = 1e
MMMMAC1 = 3e
MMMMAC1 = 86

sprom->maxpwr_bg = 76

ssb: Sonics Silicon Backplane found on PCMCIA device pcmcia0.0

IEEEMMMMAC0 = 14
IEEEMMMMAC1 = b
IEEEMMMMAC1 = 6b
IEEEMMMMAC1 = 1e
IEEEMMMMAC1 = 3e
IEEEMMMMAC1 = 86

b43-phy0: Broadcom 4318 WLAN found (core revision 9)
Broadcom 43xx driver loaded [ Features: M, Firmware-ID: FW13 ]
Reconfiguring network interfaces... 
ip: RTNETLINK answers: File exists 
b43 ssb0:0: firmware: requesting b43/ucode5.fw
buf=31 a 0loading=1buf=30 a 0loading=0
b43 ssb0:0: firmware: requesting b43/pcm5.fw
buf=31 a 0loading=1buf=30 a 0loading=0
b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
buf=31 a 0loading=1buf=30 a 0loading=0
b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
buf=31 a 0loading=1buf=30 a 0loading=0
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)

phy_g max_pwr_bg = 65535

b43-phy0 warning: Invalid max-TX-power value in SPROM.
udhcpc (v1.17.4) started
Sending discover...
phy_g max_pwr_bg = 80
Sending discover...
Sending discover...
No lease, failing
.....

and here the sources:

drivers/ssb/pcmcia.c

static int ssb_pcmcia_get_mac(struct pcmcia_device *p_dev,
			tuple_t *tuple,
			void *priv)
{
	struct ssb_sprom *sprom = priv;

	if (tuple->TupleData[0] != CISTPL_FUNCE_LAN_NODE_ID)
		return -EINVAL;
	if (tuple->TupleDataLen != ETH_ALEN + 2)
		return -EINVAL;
	if (tuple->TupleData[1] != ETH_ALEN)
		return -EINVAL;
	memcpy(sprom->il0mac, &tuple->TupleData[2], ETH_ALEN);

//ssb_log
	printk(KERN_INFO "MMMMAC0 = %x", sprom->il0mac[0]);
	printk(KERN_INFO "MMMMAC1 = %x", sprom->il0mac[1]);
	printk(KERN_INFO "MMMMAC1 = %x", sprom->il0mac[2]);
	printk(KERN_INFO "MMMMAC1 = %x", sprom->il0mac[3]);
	printk(KERN_INFO "MMMMAC1 = %x", sprom->il0mac[4]);
	printk(KERN_INFO "MMMMAC1 = %x", sprom->il0mac[5]);
//ssb_log

	return 0;
};
.....

static int ssb_pcmcia_do_get_invariants(struct pcmcia_device *p_dev,
					tuple_t *tuple,
					void *priv)
{
.....

		sprom->maxpwr_bg = tuple->TupleData[8];
//ssb_log
		printk(KERN_INFO "sprom->maxpwr_bg = %d",
		sprom->maxpwr_bg); 
//ssb_log

......


drivers/net/wireless/b43/main.c

static int b43_wireless_init(struct ssb_device *dev)
{
....

	if (is_valid_ether_addr(sprom->et1mac))
		SET_IEEE80211_PERM_ADDR(hw, sprom->et1mac);
	else
		SET_IEEE80211_PERM_ADDR(hw, sprom->il0mac);

//b43_main_log
	printk(KERN_INFO "IEEEMMMMAC0 = %x", sprom->il0mac[0]);
	printk(KERN_INFO "IEEEMMMMAC1 = %x", sprom->il0mac[1]);
	printk(KERN_INFO "IEEEMMMMAC1 = %x", sprom->il0mac[2]);
	printk(KERN_INFO "IEEEMMMMAC1 = %x", sprom->il0mac[3]);
	printk(KERN_INFO "IEEEMMMMAC1 = %x", sprom->il0mac[4]);
	printk(KERN_INFO "IEEEMMMMAC1 = %x", sprom->il0mac[5]);
//b43_main_log

....

drivers/net/wireless/b43/phy_g.c


	/* Estimate the TX power emission based on the TSSI */
	estimated_pwr = b43_gphy_estimate_power_out(dev, average_tssi);

	B43_WARN_ON(phy->type != B43_PHYTYPE_G);
	max_pwr = dev->dev->bus->sprom.maxpwr_bg;

//b43_phyg_log
	printk(KERN_INFO "phy_g max_pwr_bg = %d\n", max_pwr);
//b43_phyg_log

	if (dev->dev->bus->sprom.boardflags_lo & B43_BFL_PACTRL)
		max_pwr -= 3; /* minus 0.75 */

	if (unlikely(max_pwr >= INT_TO_Q52(30/*dBm*/))) {
		b43warn(dev->wl,
			"Invalid max-TX-power value in SPROM.\n");
		max_pwr = INT_TO_Q52(20); /* fake it */
		dev->dev->bus->sprom.maxpwr_bg = max_pwr;
	}
....
