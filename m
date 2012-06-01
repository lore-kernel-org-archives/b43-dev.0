From: Arend van Spriel <arend@broadcom.com>
Date: Fri, 1 Jun 2012 09:58:37 +0200
Subject: [PATCH] bcma: make some functions static
In-Reply-To: <1338496859-16436-1-git-send-email-hauke@hauke-m.de>
References: <1338496859-16436-1-git-send-email-hauke@hauke-m.de>
Message-ID: <4FC8762D.8090807@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 05/31/2012 10:40 PM, Hauke Mehrtens wrote:
> The functions and structs are not used in an other file and the
> prototypes are in no header file, just make them static so the compiler
> is able to optimize them better.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
> diff --git a/drivers/bcma/host_pci.c b/drivers/bcma/host_pci.c
> index 6c05cf4..f7fbae7 100644
> --- a/drivers/bcma/host_pci.c
> +++ b/drivers/bcma/host_pci.c
> @@ -77,8 +77,8 @@ static void bcma_host_pci_write32(struct bcma_device *core, u16 offset,
>  }
>  
>  #ifdef CONFIG_BCMA_BLOCKIO
> -void bcma_host_pci_block_read(struct bcma_device *core, void *buffer,
> -			      size_t count, u16 offset, u8 reg_width)
> +static void bcma_host_pci_block_read(struct bcma_device *core, void *buffer,
> +				     size_t count, u16 offset, u8 reg_width)

align this with struct keyword above.

>  {
>  	void __iomem *addr = core->bus->mmio + offset;
>  	if (core->bus->mapped_core != core)
> @@ -100,8 +100,9 @@ void bcma_host_pci_block_read(struct bcma_device *core, void *buffer,
>  	}
>  }
>  
> -void bcma_host_pci_block_write(struct bcma_device *core, const void *buffer,
> -			       size_t count, u16 offset, u8 reg_width)
> +static void bcma_host_pci_block_write(struct bcma_device *core,
> +				      const void *buffer, size_t count,
> +				      u16 offset, u8 reg_width)

same here. checkpatch also spews warnings about DOS line endings.

Gr. AvS
