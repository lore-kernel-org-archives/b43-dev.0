From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Nov 2013 14:38:15 +0100
Subject: b43 / LCN PHY
In-Reply-To: <5293C578.1030906@lwfinger.net>
References: <CAAeT8m84k1iqQk+4nch=DG2+8FPn=Kmues2LuqCwScUmAbfqRQ@mail.gmail.com>
 <5293353E.7010202@hauke-m.de> <52937DF9.9060204@lwfinger.net>
 <CAAeT8m-Gs-bJx46iMaQ7gNzm4e4XU7m30wZRF78Hr-jCSNEuag@mail.gmail.com>
 <CACna6rxME2V_ZNNuF9+qQV2G-8f1Zkda86ea7h6XKVmdjBpNVQ@mail.gmail.com>
 <5293C578.1030906@lwfinger.net>
Message-ID: <CACna6rwZ3d0Raa09icutZJDnA3pSt3mEOt_jK6fOj62Dy4d8bw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2013/11/25 Larry Finger <Larry.Finger@lwfinger.net>:
> On 11/25/2013 01:54 PM, Rafa? Mi?ecki wrote:
>> This is weird, even if b43 claims 802.11 device on your card, it
>> should simply exit after detecting unsupported hardware. That should
>> let brcmsmac load and work just fine.
>>
>> If that doesn't work that way, I think it's something wrong there.
>
>
> In the very first post in this thread, the OP said that he enabled the LCN
> PHY option. Does that change the behavior?

Whoops, yeah. You're right. b43_phy_lcn_op_init returns 0 then and b43
tries to work with that card.

-- 
Rafa?
