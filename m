From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 4 Sep 2011 08:31:47 +0200
Subject: [PATCH 3/3] b43: LCN-PHY: load TX gain table on init
In-Reply-To: <1315081282.1773.19.camel@Joe-Laptop>
References: <1315076463-11222-1-git-send-email-zajec5@gmail.com>
	<1315076463-11222-4-git-send-email-zajec5@gmail.com>
	<1315081282.1773.19.camel@Joe-Laptop>
Message-ID: <CACna6ryuRQE9u7ihb2FnFkRLjLV-U7apqeU_N1SXJhB_ohR++g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joe Perches <joe@perches.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 3 wrze?nia 2011 22:21 u?ytkownik Joe Perches <joe@perches.com> napisa?:
> On Sat, 2011-09-03 at 21:01 +0200, Rafa? Mi?ecki wrote:
>> Values and ops were taken from MMIO dump of wl. struct was copied from
>> brcmsmac.
> []
>> diff --git a/drivers/net/wireless/b43/tables_phy_lcn.c b/drivers/net/wireless/b43/tables_phy_lcn.c
> []
>> +const struct b43_lcntab_tx_gain_tbl_entry
>> + ? ? ? ? ? ? b43_lcntab_tx_gain_tbl_2ghz_ext_pa_rev0[] = {
>
> 128 entries follow...

OK, I'll fix that.


>> + ? ? { 0x03, 0x00, 0x1f, 0x0, 0x48 },
> [etc]
>> + ? ? { 0x03, 0x00, 0x01, 0x0, 0x39 },
>> +};
>
>> +void b43_phy_lcn_load_tx_gain_tab(struct b43_wldev *dev,
>> + ? ? ? ? ? ? ? ? ? ? const struct b43_lcntab_tx_gain_tbl_entry *gain_table)
>
> Are there multiple gain tables?

Yes, please check for the condition where we call
b43_phy_lcn_load_tx_gain_tab, and the table name. Different hardware
will need different table.


>> +{
>> + ? ? u32 i;
>> + ? ? u32 val;
>> +
>> + ? ? u16 pa_gain = 0x70;
>> + ? ? if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_FEM)
>> + ? ? ? ? ? ? pa_gain = 0x10;
>> +
>> + ? ? for (i = 0; i < 128; i++) {
>
> Can this be a fixed table and ARRAY_SIZE?

Not trivial, as we accept multiple tables here. I could do
BUG_BUILD_ON(ARRAY_SIZE(tab1) != ARRAY_SIZE(tab2);
and then use ARRAY_SIZE(tab1)
Or maybe I'll just use a define... Probably a better idea.

-- 
Rafa?
