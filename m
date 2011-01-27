From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 27 Jan 2011 18:16:14 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <4D41A275.2070704@lwfinger.net>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
	<4D41A275.2070704@lwfinger.net>
Message-ID: <AANLkTim8s-JM7sj48+puT9gnKzwsRS8sLtpW6VXx7NiU@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

W dniu 27 stycznia 2011 17:51 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 01/27/2011 10:37 AM, Rafa? Mi?ecki wrote:
>> I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
>> inserted into PC. ?Unfortunately after inserting my Broadcom card to
>> it, it is not detected in "lspci" at all.
>>
>> My WiFi card used to work in "native" slot inside notebook. So if
>> anything is broken, that would be PCIe x1 slot on motherboard or
>> adapter itself. I've tested V and GND pins in my PCIe x1 slot, all
>> work fine. I'll try get some other WiFi cards, to test my adapter
>> tomorrow.
>>
>> However, maybe you have heard about some problems with such a
>> adapters? Can there be sth preventing my card from being detected,
>> visible?
>
> Does the adapter show up as a new bridge in lspci or in dmesg?

No difference in lspci or dmesg. I've even tried lspci with every -A.

I guess this adapter mostly reroutes pins, probably won't be visible
as separated bridge itself.

-- 
Rafa?
