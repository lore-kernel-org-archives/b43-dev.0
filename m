From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 14 Oct 2015 16:48:43 +0200
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <CACna6rwGRM-qiXSijeGDzupwUXg62BoUDtyL3gPD-HrCJvhQmQ@mail.gmail.com>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
 <20150921182000.6d89445d@wiggum>
 <CACna6rzSqnJF2uBS-DszR+1PFNwqM8S0WecAE+R4QRJjGYuXYQ@mail.gmail.com>
 <20150923175801.69076f31@wiggum>
 <CACna6rwGRM-qiXSijeGDzupwUXg62BoUDtyL3gPD-HrCJvhQmQ@mail.gmail.com>
Message-ID: <20151014164843.4f9a00e3@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Larry Finger <larry.finger@lwfinger.net>, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev <b43-dev@lists.infradead.org>

On Wed, 14 Oct 2015 13:17:16 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> If all PCI-bus-host-specific code is always the same,

And that's the point. It's always the same _except_ for the device IDs.
Which obviously are PCI-device specific.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20151014/2a0bc224/attachment.sig>
