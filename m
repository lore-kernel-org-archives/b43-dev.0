From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 23 Sep 2012 21:39:34 +0200
Subject: [RFC] b43-fwcutter: Add support for generating a fw for brcmsmac
In-Reply-To: <1348425562-30730-1-git-send-email-hauke@hauke-m.de>
References: <1348425562-30730-1-git-send-email-hauke@hauke-m.de>
Message-ID: <20120923213934.4da339ae@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, brcm80211-dev-list@broadcom.com

On Sun, 23 Sep 2012 20:39:22 +0200
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> The normal firmware for brcmsmac is available in the linux-firmware git
> repository, but this firmware does not work on a bcm4716 devices with a
> ieee80211 core rev 16. When using a firmware extracted from the
> proprietary Broadcom driver the device works with brcmsmac.
> 
> I tested a firmware version 666.2 extracted from the proprietary driver
> with brcmsmac on a BCM4716 and a BCM43224 and haven't seen any
> problems. The interface between the firmware and the driver changed
> some times, brcmsmac only support firmware version 598 and newer.
> 
> For some entries in the firmware used by brcmsmac, fwcutter has to be
> more extended, so we are adding dummy entires for them in
> brcmsmac_add_dummy_entries(). Currently these entries are not used by
> brcmsmac, but it is checked if they are in the archive.
> 
> I would still appreciate if Broadcom could release a firmware with
> support for the ieee80211 core found in the bcm4716.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>


I'm OK with it. Some other comments?

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120923/388c2afb/attachment.sig>
