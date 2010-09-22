From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Wed, 22 Sep 2010 07:05:14 +0200
Subject: [PATCH] b43/b43legacy - Credit Broadcom with enabling the
	development of the drivers
In-Reply-To: <AANLkTikMZQ6G0=hLAdehinM1LNo7NzVVEE4xbK6fU0yP@mail.gmail.com>
	(sfid-20100921_183849_107489_3B5237EC)
References: <1284921651.24835.11.camel@i7.infradead.org>
	<AANLkTinoe86gtsMJMJ-jitj3yHo35FBdyiqbPKuUAe_R@mail.gmail.com>
	<AANLkTi=sbh-y73+VuEWQz8ni47zaeBXCBRQGUH=0j_Zr@mail.gmail.com>
	<4C97AFCE.3040806@wetwork.net>
	<AANLkTinEY2XeoA1WN8GRTdAcSebe+LUb-N9u7-zz_bpe@mail.gmail.com>
	<4C97D0B2.9080704@wetwork.net>
	<AANLkTim-69if8MdUtDnE+sDU0hCMUed6WGaPURCAy5W4@mail.gmail.com>
	<4C97D76F.1040601@wetwork.net> <20100921040122.17974.qmail@stuge.se>
	<AANLkTincBvTWQ=7_xHsdmg8E1q7DKstwkOLERm_SRKY0@mail.gmail.com>
	<AANLkTikMZQ6G0=hLAdehinM1LNo7NzVVEE4xbK6fU0yP@mail.gmail.com>
	(sfid-20100921_183849_107489_3B5237EC)
Message-ID: <1285131914.14456.17.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2010-09-21 at 15:38 -0700, Larry Finger wrote: 
> 
> NACK on the patch that started this thread. Broadcom got caught
> violating the GPL and had to provide the binary drivers to compensate
> for that. They did not provide anything voluntarily.

Hm, I actually planned to not reply to this thread, but I think
I do have to comment on that one. :)

I'm not speaking for Broadcom or anybody else. However, I think first
of all Broadcom wasn't caught of anything. (I guess you are talking
about the WRT issue, right?). It's the _vendors_ who violated the GPL.

Second thing is that I do not think it's possible at all to compensate
for a GPL violation by providing binary object code. I don't
have to explain why this is the case. It's obvious.

Back to the original patch. I do think that David is misunderstood here.
I also misunderstood him when we talked about that earlier.
Here's the original comment again:

+  Broadcom enabled the development of this driver, by providing all required
+  hardware information in the form of binary software drivers.

Let me rephrase the comment a little bit. I will not change the
meaning :)

+  Certain lawyers are wrong, and this driver proves it.
+  http://tinyurl.com/ybl83uw

That's basically all it says. No more, no less.

In the end, I am not interested in these legal fights at all. So I do not
have an opinion on whether the patch should be applied or not. I am only
interested in technical issues and I'll leave the rest to others who might
know better (or not).

-- 
Greetings Michael.
