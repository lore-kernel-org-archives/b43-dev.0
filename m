From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 22 Jul 2012 16:02:14 +0200
Subject: [IDEA RFC][PATCH] b43: G-PHY: drop unused PHY rev 1 code
In-Reply-To: <CAOiHx==DNDHt43yM6=dFMTRDrKqRj4pduhybwipxjg8aLM3eew@mail.gmail.com>
References: <1342962054-26239-1-git-send-email-zajec5@gmail.com>
 <CAOiHx==DNDHt43yM6=dFMTRDrKqRj4pduhybwipxjg8aLM3eew@mail.gmail.com>
Message-ID: <CACna6rzmqfSakBUhZzLGS0hrKfqTeq4uLGx5+js=Gi5i6a+fyg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/7/22 Jonas Gorski <jonas.gorski@gmail.com>:
> On 22 July 2012 15:00, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> b43 does not support devices with G-PHY rev 1. They are handled by
>> b43legacy.
>> ---
>> This change matches http://bcm-v4.sipsolutions.net/802.11/PHY/Init/G
>> routine. Since b43 and b43legacy were splitted, I believe PHY support
>> can be splitted too.
>>
>> I think similar change (just "reversed" can be applied to the b43legacy)
>> ---
>>  drivers/net/wireless/b43/main.c  |    2 +-
>>  drivers/net/wireless/b43/phy_g.c |  103 +-------------------------------------
>>  2 files changed, 2 insertions(+), 103 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>> index b80352b..8e5f4e8 100644
>> --- a/drivers/net/wireless/b43/main.c
>> +++ b/drivers/net/wireless/b43/main.c
>> (snip)
>> @@ -1993,10 +1895,7 @@ static void b43_phy_initg(struct b43_wldev *dev)
>>         struct b43_phy_g *gphy = phy->g;
>>         u16 tmp;
>>
>> -       if (phy->rev == 1)
>> -               b43_phy_initb5(dev);
>> -       else
>> -               b43_phy_initb6(dev);
>> +       b43_phy_initb6(dev);
>>
>>         if (phy->rev >= 2 || phy->gmode)
>
> Isn't this one then also always true?

There's MUCH more to be dropped, I just wanted to put this IDEA for RFC :)

-- 
Rafa?
