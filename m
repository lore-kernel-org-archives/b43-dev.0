From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 9 Aug 2012 16:23:09 +0200
Subject: b43: N-PHY: add overriding RF control for rev7+
In-Reply-To: <20120809141826.GE3734@mwanda>
References: <20120809141539.GA15153@elgon.mountain>
 <20120809141826.GE3734@mwanda>
Message-ID: <CACna6rzC4AB6yNvw+UYrNcMfuKsWYODd6OwjOommNdOAtZ53YA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/8/9 Dan Carpenter <dan.carpenter@oracle.com>:
> On Thu, Aug 09, 2012 at 05:15:39PM +0300, Dan Carpenter wrote:
>> Hello Rafa? Mi?ecki,
>>
>> This is a semi-automatic email about new static checker warnings.
>>
>> The patch c071b9f666be: "b43: N-PHY: add overriding RF control for
>> rev7+" from Jul 26, 2012, leads to the following Smatch complaint:
>>
>> drivers/net/wireless/b43/phy_n.c:158 b43_nphy_rf_control_override_rev7()
>>        warn: variable dereferenced before check 'e' (see line 154)
>>
>> drivers/net/wireless/b43/phy_n.c
>>    153
>>    154                        val_addr = (i == 0) ? e->val_addr_core0 : e->val_addr_core1;
>>                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> New dereferences.
>>
>>    155
>>    156                        if (off) {
>>    157                                b43_phy_mask(dev, en_addr, ~en_mask);
>>    158                                if (e) /* Do it safer, better than wl */
>>                                    ^^^
>> New check.
>>
>>    159                                        b43_phy_mask(dev, val_addr, ~e->val_mask);
>>    160                        } else {
>>
>
> There is a second NULL check a couple lines down as well.

I failed at that, thanks!

-- 
Rafa?
