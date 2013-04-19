From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 19 Apr 2013 20:57:10 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <51718A1F.9070301@lwfinger.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <51718A1F.9070301@lwfinger.net>
Message-ID: <20130419205710.73230d79@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 19 Apr 2013 13:17:03 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> With this patch, can the number of RX descriptors be reduced back to 64 on your 
> system? I realize it will be be hard to apply with the white space errors and 
> line wraps, but perhaps we will get a clean version soon.

It would be good to lower the number of RX descriptors as low as possible.
Maybe even lower than 64. We should do more tests on that.
That certainly could improve performance on low-end devices.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130419/fe2ab06e/attachment.sig>
