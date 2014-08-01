From: Florian Fainelli <f.fainelli@gmail.com>
Date: Thu, 31 Jul 2014 18:55:10 -0700
Subject: [PATCH 3.18 3/7] b43: flush some writes on Broadcom MIPS SoCs
In-Reply-To: <CACna6rw3J+vDO8LsupMOUkGJV6bc9V6+gcZBA==b69AQYuSoXg@mail.gmail.com>
References: <1406836788-23704-1-git-send-email-zajec5@gmail.com>
 <1406836788-23704-4-git-send-email-zajec5@gmail.com>
 <CAGVrzcaWKwAdY=cgbb9GNoEG8hkjrPa5OWBHKjftcOdLJKJARQ@mail.gmail.com>
 <CACna6rw3J+vDO8LsupMOUkGJV6bc9V6+gcZBA==b69AQYuSoXg@mail.gmail.com>
Message-ID: <CAGVrzcan_wYou6dUQi0NHRBWbzyjy+rmOWZEr849XfDsjiG=0A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "John W. Linville" <linville@tuxdriver.com>, "open list:ATHEROS ATH5K WIR..." <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

2014-07-31 13:34 GMT-07:00 Rafa? Mi?ecki <zajec5@gmail.com>:
> On 31 July 2014 22:25, Florian Fainelli <f.fainelli@gmail.com> wrote:
>>> +static inline void b43_write16f(struct b43_wldev *dev, u16 offset, u16 value)
>>> +{
>>> +       b43_write16(dev, offset, value);
>>> +#if defined(CONFIG_BCM47XX) || defined(CONFIG_BCM63XX)
>>> +       b43_read16(dev, offset);
>>> +#endif
>>> +}
>>
>> How about you leave the calls to b43_write16() to avoid missing call
>> sites, but you re-define it for BCM47XX and BCM63XX? Or, you could
>> introduce a __b43_write16() that defaults to dev->dev->write16 in the
>> normal case, and gets called by b43_write16() such that we you'd get:
>
> I didn't mean (and I didn't) enable flushing for all writes. Only
> these touching specific registers. I don't think we need to flush
> every single write.

Ok, then the current approach looks good to me, thanks!
-- 
Florian
