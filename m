From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 23 Aug 2011 12:10:17 -0500
Subject: [PATCH] b43: HT-PHY: allow writing longer tables with a single
	call
In-Reply-To: <1314119370-22869-1-git-send-email-zajec5@gmail.com>
References: <1314119370-22869-1-git-send-email-zajec5@gmail.com>
Message-ID: <4E53DEF9.5080203@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 08/23/2011 12:09 PM, Rafa? Mi?ecki wrote:
> Sometimes we need to write table which is 2-10 elements long. It's
> easier to create such a function instead of defining array every time.
>
> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>

ACK.  Larry

> ---
>   drivers/net/wireless/b43/tables_phy_ht.c |   45 ++++++++++++++++++++++++++++++
>   drivers/net/wireless/b43/tables_phy_ht.h |    1 +
>   2 files changed, 46 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/net/wireless/b43/tables_phy_ht.c b/drivers/net/wireless/b43/tables_phy_ht.c
> index 2127bd2..677d217 100644
> --- a/drivers/net/wireless/b43/tables_phy_ht.c
> +++ b/drivers/net/wireless/b43/tables_phy_ht.c
> @@ -710,6 +710,51 @@ void b43_httab_write(struct b43_wldev *dev, u32 offset, u32 value)
>   	return;
>   }
>
> +void b43_httab_write_few(struct b43_wldev *dev, u32 offset, size_t num, ...)
> +{
> +	va_list args;
> +	u32 type, value;
> +	unsigned int i;
> +
> +	type = offset&  B43_HTTAB_TYPEMASK;
> +	offset&= 0xFFFF;
> +
> +	va_start(args, num);
> +	switch (type) {
> +	case B43_HTTAB_8BIT:
> +		b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
> +		for (i = 0; i<  num; i++) {
> +			value = va_arg(args, int);
> +			B43_WARN_ON(value&  ~0xFF);
> +			b43_phy_write(dev, B43_PHY_HT_TABLE_DATALO, value);
> +		}
> +		break;
> +	case B43_HTTAB_16BIT:
> +		b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
> +		for (i = 0; i<  num; i++) {
> +			value = va_arg(args, int);
> +			B43_WARN_ON(value&  ~0xFFFF);
> +			b43_phy_write(dev, B43_PHY_HT_TABLE_DATALO, value);
> +		}
> +		break;
> +	case B43_HTTAB_32BIT:
> +		b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
> +		for (i = 0; i<  num; i++) {
> +			value = va_arg(args, int);
> +			b43_phy_write(dev, B43_PHY_HT_TABLE_DATAHI,
> +				      value>>  16);
> +			b43_phy_write(dev, B43_PHY_HT_TABLE_DATALO,
> +				      value&  0xFFFF);
> +		}
> +		break;
> +	default:
> +		B43_WARN_ON(1);
> +	}
> +	va_end(args);
> +
> +	return;
> +}
> +
>   void b43_httab_write_bulk(struct b43_wldev *dev, u32 offset,
>   			  unsigned int nr_elements, const void *_data)
>   {
> diff --git a/drivers/net/wireless/b43/tables_phy_ht.h b/drivers/net/wireless/b43/tables_phy_ht.h
> index bd20e9a..1b5ef2b 100644
> --- a/drivers/net/wireless/b43/tables_phy_ht.h
> +++ b/drivers/net/wireless/b43/tables_phy_ht.h
> @@ -14,6 +14,7 @@ u32 b43_httab_read(struct b43_wldev *dev, u32 offset);
>   void b43_httab_read_bulk(struct b43_wldev *dev, u32 offset,
>   			 unsigned int nr_elements, void *_data);
>   void b43_httab_write(struct b43_wldev *dev, u32 offset, u32 value);
> +void b43_httab_write_few(struct b43_wldev *dev, u32 offset, size_t num, ...);
>   void b43_httab_write_bulk(struct b43_wldev *dev, u32 offset,
>   			  unsigned int nr_elements, const void *_data);
>
