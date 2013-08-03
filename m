From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 03 Aug 2013 12:48:36 -0500
Subject: b43: DMA errors with BCM4331 on BCM4706
In-Reply-To: <20130803185504.022b19d2@milhouse>
References: <51FD218E.9040700@hauke-m.de> <20130803185504.022b19d2@milhouse>
Message-ID: <51FD4274.3010108@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 08/03/2013 11:55 AM, Michael B?sch wrote:
> On Sat, 03 Aug 2013 17:28:14 +0200
> Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
>> I used wireshark to see what actually happens and the device send out
>> beacons and answers to probe requests without problems. I see the
>> Authentication, Association Request and Association Response frames and
>
> That suggests DMA works for some packets and then fails?
>
>> Does anybody have any thought on this topic?
>
> You should print out more of the DMA values.

Could it possibly work with short packets, but fail on longer ones?

Larry
