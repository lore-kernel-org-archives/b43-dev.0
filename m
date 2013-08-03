From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 3 Aug 2013 18:55:04 +0200
Subject: b43: DMA errors with BCM4331 on BCM4706
In-Reply-To: <51FD218E.9040700@hauke-m.de>
References: <51FD218E.9040700@hauke-m.de>
Message-ID: <20130803185504.022b19d2@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On Sat, 03 Aug 2013 17:28:14 +0200
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> I used wireshark to see what actually happens and the device send out
> beacons and answers to probe requests without problems. I see the
> Authentication, Association Request and Association Response frames and

That suggests DMA works for some packets and then fails?

> Does anybody have any thought on this topic?

You should print out more of the DMA values.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130803/8827004d/attachment.sig>
