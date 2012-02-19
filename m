From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 19 Feb 2012 20:50:16 +0100
Subject: [PATCH 04/11] ssb: add ccode
In-Reply-To: <4F414D63.1070409@hauke-m.de>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
 <1329676345-15856-5-git-send-email-hauke@hauke-m.de>
 <20120219194923.566f3fe8@milhouse> <4F414D63.1070409@hauke-m.de>
Message-ID: <20120219205016.742a4bad@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com

On Sun, 19 Feb 2012 20:28:35 +0100
Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >>  	u8 country_code;	/* Country Code */
> >> +	char ccode[2];		/* Country Code as two chars like EU or US */
> > 
> > This usually is referred to as "alpha2". So we should name it like that, too.
> I can not find any references to "alpha2" in the spec

http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2

-- 
Greetings, Michael.
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120219/a0ed0db5/attachment.sig>
