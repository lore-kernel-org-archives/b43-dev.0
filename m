From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 27 Jan 2011 18:14:34 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <20110127164717.7220.qmail@stuge.se>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
	<20110127164717.7220.qmail@stuge.se>
Message-ID: <AANLkTim_m43Dbv8chF4i0i7XeQyAuqSeOjGZ4dRZ8aaC@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

W dniu 27 stycznia 2011 17:47 u?ytkownik Peter Stuge <peter@stuge.se> napisa?:
> Rafa? Mi?ecki wrote:
>> I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
>> inserted into PC. ?Unfortunately after inserting my Broadcom card to
>> it, it is not detected in "lspci" at all.
>
> Tried the various -A options?
>
> linux-sysfs
> linux-proc
> intel-conf1
> intel-conf2

Yes. First three don't differ, last one gives garbage.


> The BIOS could be causing trouble. If intel-conf1 doesn't work then
> try inserting any working PCIe card into the slot, note the bus:slot
> it gets, and finally reboot with the wifi card and run:
>
> lspci -A intel-conf1 -s bus:slot

Thanks, I'll try that when I get any PCIe card.

-- 
Rafa?
