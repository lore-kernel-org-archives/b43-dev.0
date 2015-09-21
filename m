From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 21 Sep 2015 18:26:22 +0200
Subject: [PATCH][RFC][RFT] ssb: pick PCMCIA host code support from b43
 driver
In-Reply-To: <56002CE8.3080605@lwfinger.net>
References: <1442826259-6270-1-git-send-email-zajec5@gmail.com>
 <56002CE8.3080605@lwfinger.net>
Message-ID: <20150921182622.0727f224@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org

On Mon, 21 Sep 2015 11:14:32 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> This patch has been tested on PPC architecture with Linksys WPC54G PCMCIA cards.

Are you sure that this really is a 16 bit PCMCIA card and not a PC-Card?
If it shows up in lspci, it's not a PCMCIA card.

> It probably does not matter here, but I prefer that hexadecimal constants in 
> device tables contain only the lower-case versions of a-f. That makes searching 
> for such constants with grep a lot easier.

I prefer coffee over tea. That doesn't make coffee any better, though.

Is it really so that the rest of the kernel only uses lower case here?
Grep also supports case insensitive regexes, if done correctly. And if
not everybody uses lower case here, you'll have to do that anyway.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150921/7748b8c7/attachment-0001.sig>
