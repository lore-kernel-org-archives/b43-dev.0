From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 7 Mar 2013 17:41:14 +0100
Subject: [PATCH 11/13] b43: HT-PHY: implement RSSI polling
In-Reply-To: <20130307173507.64a55ba3@milhouse>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1362671247-10766-12-git-send-email-zajec5@gmail.com>
 <20130307173507.64a55ba3@milhouse>
Message-ID: <CACna6rxpDhUzQTmb5pUkEJWo6zuXTopmk81-+w1gW67ip-4TTw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/3/7 Michael B?sch <m@bues.ch>:
> On Thu,  7 Mar 2013 16:47:25 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> +     const u16 ctl_regs[3][2] = {
>> +             { B43_PHY_HT_AFE_C1, B43_PHY_HT_AFE_C1_OVER, },
>> +             { B43_PHY_HT_AFE_C2, B43_PHY_HT_AFE_C2_OVER, },
>> +             { B43_PHY_HT_AFE_C3, B43_PHY_HT_AFE_C3_OVER, },
>> +     };
>> +     const u16 radio_r[] = { R2059_SYN, R2059_TXRX0, R2059_RXRX1, };
>
>> +     u16 phy_regs_to_save[] = {
>> +             B43_PHY_HT_AFE_C1, B43_PHY_HT_AFE_C1_OVER,
>> +             0x848, 0x841,
>> +             B43_PHY_HT_AFE_C2, B43_PHY_HT_AFE_C2_OVER,
>> +             0x868, 0x861,
>> +             B43_PHY_HT_AFE_C3, B43_PHY_HT_AFE_C3_OVER,
>> +             0x888, 0x881,
>> +     };
>
> It usually is better to define tables that are constant as "static const",
> so that they are not put on the kernel stack.

Thanks, I'll fix that, will just wait a little longer for more
comments (if any appear)

-- 
Rafa?
