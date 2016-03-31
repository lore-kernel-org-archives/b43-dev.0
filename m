From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 31 Mar 2016 21:09:36 +0200
Subject: [PATCH] PCI: Add Broadcom 4331 reset quirk to prevent IRQ storm
In-Reply-To: <E1akxli-00030z-Jz@bombadil.infradead.org>
References: <E1akxli-00030z-Jz@bombadil.infradead.org>
Message-ID: <20160331210936.6b195135@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lukas Wunner <lukas@wunner.de>
Cc: linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Tue, 29 Mar 2016 19:41:30 +0200
Lukas Wunner <lukas@wunner.de> wrote:

> +static void quirk_apple_b43_reset(struct pci_dev *dev)
> +{
> +	void __iomem *mmio;
> +
> +	if (!dmi_match(DMI_BOARD_VENDOR, "Apple Inc.") || !dev->bus->self ||
> +	    pci_pcie_type(dev->bus->self) != PCI_EXP_TYPE_ROOT_PORT)
> +		return;
> +
> +	mmio = pci_iomap(dev, 0, 0);
> +	if (!mmio) {
> +		pr_err("b43 quirk: Cannot iomap device, IRQ storm ahead\n");
> +		return;
> +	}
> +	iowrite32(BCMA_RESET_CTL_RESET,
> +		  mmio + (1 * BCMA_CORE_SIZE) + BCMA_RESET_CTL);
> +	pci_iounmap(dev, mmio);
> +}
> +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_BROADCOM, 0x4331, quirk_apple_b43_reset);

Looks good, as long as the wireless core is always guaranteed to be
the second core on that PCI device.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160331/6fe60948/attachment.sig>
