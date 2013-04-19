From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 19 Apr 2013 17:55:49 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
Message-ID: <20130419175549.21db7b33@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 19 Apr 2013 16:32:00 +0200
Jonas Gorski <jonas.gorski@gmail.com> wrote:

> Apart from the style problems, maybe doing a
> 	if (printk_ratelimit())
> 		b43warn(...);
> 
> which will ensure that it won't flood the log, but still won't stop
> reporting them after the 256th time.

All b43 log helpers are ratelimited already. So no need for that.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130419/a57f356e/attachment.sig>
