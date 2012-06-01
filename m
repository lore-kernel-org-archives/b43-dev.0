From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Fri, 01 Jun 2012 22:33:32 +0200
Subject: [PATCH] bcma: fix null pointer in bcma_core_pci_irq_ctl
In-Reply-To: <4FC8796E.4060800@broadcom.com>
References: <1338496770-16381-1-git-send-email-hauke@hauke-m.de>
 <4FC8796E.4060800@broadcom.com>
Message-ID: <4FC9271C.5030608@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, Joe Perches <joe@perches.com>

On 06/01/2012 10:12 AM, Arend van Spriel wrote:
> On 05/31/2012 10:39 PM, Hauke Mehrtens wrote:
>> pc could be null if hosttype != BCMA_HOSTTYPE_PCI.
>> If we are on a device without a pci core this function is called with
>> pc = null by b43 and brcmsmac. If the host type is PCI we have a pci
>> core as well and pc can not be null.
>>
>> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
>>  drivers/bcma/driver_pci.c |    4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/bcma/driver_pci.c b/drivers/bcma/driver_pci.c
>> index 9a96f14..884b7af 100644
>> --- a/drivers/bcma/driver_pci.c
>> +++ b/drivers/bcma/driver_pci.c
>> @@ -232,7 +232,7 @@ void __devinit bcma_core_pci_init(struct bcma_drv_pci *pc)
>>  int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
>>  			  bool enable)
>>  {
>> -	struct pci_dev *pdev = pc->core->bus->host_pci;
>> +	struct pci_dev *pdev;
>>  	u32 coremask, tmp;
>>  	int err = 0;
>>  
>> @@ -243,6 +243,8 @@ int bcma_core_pci_irq_ctl(struct bcma_drv_pci *pc, struct bcma_device *core,
> Could you change the if statement as well:
>   - if (core->bus->hosttype != BCMA_HOSTTYPE_PCI) {
>   + if (!pc || core->bus->hosttype != BCMA_HOSTTYPE_PCI)

Yes that's good I will change that, just to be save.

>>		/* This bcma device is not on a PCI host-bus. So the IRQs are
>>		 * not routed through the PCI core.
>>		 * So we must not enable routing through the PCI core. */
>>		goto out;
>   -  	}

Is removing the braces correct here? There is just one line of code so
it will compile and the braces are not necessary, but I think it would
looks somehow strange because there is a 3 line comment in addition to
the one line of code in that if block.

@Joe Perches what do you think about this?

>> +	pdev = pc->core->bus->host_pci;
>> +
>>  	err = pci_read_config_dword(pdev, BCMA_PCI_IRQMASK, &tmp);
>>  	if (err)
>>  		goto out;

Hauke
