From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 20 Apr 2014 18:58:30 +0200
Subject: Looking for dual core (IEEE 802.11) device supported by b43
In-Reply-To: <CACna6rw3sLia7+Ky=EYvOb54=csigt_x-=HAOW6g-wzkke+8cg@mail.gmail.com>
References: <CACna6rw3sLia7+Ky=EYvOb54=csigt_x-=HAOW6g-wzkke+8cg@mail.gmail.com>
Message-ID: <20140420185830.1445bdbd@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 20 Apr 2014 18:17:17 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> I was wondering if we need support for core switching in b43. Is there
> any device supported by b43 that has two IEEE 802.11 ssb cores?
> 
> I was searching for examples of such devices and they always are ssb
> chipsets 0x4306 with two IEEE 802.11 cores rev 0x04. As you know, revs
> 0x02 and 0x04 are supported by b43legacy.
> 
> Maybe some uncommon PCMCIA/SDIO devices? Anyone recalling them?


There never was a supported device that required coreswitching.
So it's completely untested.
As of my knowledge only a few of the very early A-PHY devices
required this.
Feel free to remove it from b43.


-- 
Michael.

----
Please use PGP/GPG encryption.
Key-ID: F532BE1D908D8B0E
--------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140420/edb2011d/attachment.sig>
