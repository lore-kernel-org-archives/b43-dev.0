From: Christopher Horler <cshorler@googlemail.com>
Date: Mon, 25 Nov 2013 17:06:26 +0000
Subject: b43 / LCN PHY
In-Reply-To: <52937DF9.9060204@lwfinger.net>
References: <CAAeT8m84k1iqQk+4nch=DG2+8FPn=Kmues2LuqCwScUmAbfqRQ@mail.gmail.com>
 <5293353E.7010202@hauke-m.de> <52937DF9.9060204@lwfinger.net>
Message-ID: <CAAeT8m-Gs-bJx46iMaQ7gNzm4e4XU7m30wZRF78Hr-jCSNEuag@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 25 November 2013 16:42, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 11/25/2013 05:32 AM, Hauke Mehrtens wrote:
>>
>> On 11/25/2013 11:33 AM, Christopher Horler wrote:
>>>
>>> Hi All,
>>>
>>> I enabled the (broken) LCN PHY support.  I understand it's broken, I'm
>>> not expecting it to work... at least not yet!
>>>
>>> Is anyone looking at this?
>>>
>>> Are there any obvious major blocking issues (so as to avoid unnecessary
>>> effort)?
>>>
>>> Chris
>>
>>
>> I do not think anybody will work on adding support for the LCN PHY
>> (BCM4313) to b43 any more, because brcmsmac already supports this device.
>>
>> There is some code missing to make this card working in b43, it is not
>> working at all, you should use brcmsmac.
>
>
> As the only person working on reverse engineering of Broadcom chips, I am
> certain that anything missing from the LCN specs is unlikely to be added. I
> agree that you should use brcmsmac and report all problems.
>
> Larry
>

Thanks for the info guys.

okay, will use brcmsmac - I've just noted the same info about LCN PHY
support is also here:
http://wireless.kernel.org/en/users/Drivers/b43#Comparison_of_recent_drivers

I also failed to notice that my system is automatically loading b43,
ssb, brcmsmac and bcma.  Is it normal (or necessary) for both drivers
to be loaded?

Things still seem to work correctly if I blacklist b43.

Chris
