From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue, 07 Jun 2011 00:06:36 +0200
Subject: [RFC][PATCH 04/10] bcma: add mips driver
In-Reply-To: <BANLkTim_TtNVmmyH5J3G0pK-vrWNL1+24A@mail.gmail.com>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>	<1307311658-15853-5-git-send-email-hauke@hauke-m.de>
	<BANLkTim_TtNVmmyH5J3G0pK-vrWNL1+24A@mail.gmail.com>
Message-ID: <4DED4F6C.5030902@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

On 06/06/2011 01:23 PM, Rafa? Mi?ecki wrote:
> 2011/6/6 Hauke Mehrtens <hauke@hauke-m.de>:
>> +/* driver_mips.c */
>> +extern unsigned int bcma_core_mips_irq(struct bcma_device *dev);
> 
> Does it compile without CONFIG_BCMA_DRIVER_MIPS?
No ;-) Thought about it after sending these patches, some other patches
will have the same problem.
> 
> 
>> +/* Get the MIPS IRQ assignment for a specified device.
>> + * If unassigned, 0 is returned.
>> + * If disabled, 5 is returned.
>> + * If not supported, 6 is returned.
>> + */
> 
> Does it ever return 6?
Some old comment, will fix this.
> 
>> +unsigned int bcma_core_mips_irq(struct bcma_device *dev)
>> +{
>> +       struct bcma_device *mdev = dev->bus->drv_mips.core;
>> +       u32 irqflag;
>> +       unsigned int irq;
>> +
>> +       irqflag = bcma_core_mips_irqflag(dev);
>> +
>> +       for (irq = 1; irq <= 4; irq++)
>> +               if (bcma_read32(mdev, BCMA_MIPS_MIPS74K_INTMASK(irq)) & (1 << irqflag))
>> +                       break;
> 
> Use scripts/checkpatch*. Braces around "for" and split line to match
> 80 chars width.
Will check all patches with scripts/checkpatch.sh
> 
> Why don't you just use "return irq;" instead of break?
yes this will be better.
> 
> 
>> +
>> +       if (irq == 5)
>> +               irq = 0;
>> +
>> +       return irq;
> 
> You can just make it "return 0;" after changing break to return.
agree
> 
> 
>> +                       for (i = 0; i < bus->nr_cores; i++)
>> +                               if ((1 << bcma_core_mips_irqflag(&bus->cores[i])) == oldirqflag) {
>> +                                       bcma_core_mips_set_irq(&bus->cores[i], 0);
>> +                                       break;
>> +                               }
> 
> Braces for "for".
Is this needed after the coding guildlines? Shouldn't they be removed if
they are not needed?
> 
>> +       pr_info("after irq reconfiguration\n");
> 
> Make first letter uppercase. I'm not English expert, but doesn't
> something like "IRQ reconfiguration done" sound better?
> 
Sounds better.
