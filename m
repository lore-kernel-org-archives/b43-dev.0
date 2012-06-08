From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 8 Jun 2012 20:10:53 +0200
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
 n_queues))
In-Reply-To: <4FD239AA.9090708@lwfinger.net>
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339167160.4901.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b-p1aTUG8L=5SCNB8Gqzwsm7_VA53Qf-ENPHmM5Z5C8hg@mail.gmail.com>
 <1339168452.5748.0.camel@jlt3.sipsolutions.net>
 <1339168600.5748.2.camel@jlt3.sipsolutions.net>
 <CAHsu+b_Dp-A_kC-MSofJko3hr4dYxreYQ7rrq7wzsJXVoY_5yw@mail.gmail.com>
 <4FD21C6B.5000402@lwfinger.net>
 <1339170182.5748.7.camel@jlt3.sipsolutions.net>
 <1339170287.5748.8.camel@jlt3.sipsolutions.net>
 <1339170510.5748.9.camel@jlt3.sipsolutions.net>
 <1339170742.5748.10.camel@jlt3.sipsolutions.net>
 <CAHsu+b8ZGPN3iQNGH1mdzMO6kH+F1n+qZ5cT4KMcx8bh_BP1qg@mail.gmail.com>
 <1339171159.5748.11.camel@jlt3.sipsolutions.net>
 <CAHsu+b9EgAfq6_G8xqRzf0qHkmyQnvs7j=g4wWcSVJXstAz4mw@mail.gmail.com>
 <4FD22727.7000500@lwfinger.net>
 <1339172904.5748.18.camel@jlt3.sipsolutions.net>
 <20120608183339.78a7fcbd@milhouse> <4FD239AA.9090708@lwfinger.net>
Message-ID: <20120608201053.48548a11@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Johannes Berg <johannes@sipsolutions.net>, Andre Heider <a.heider@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Fri, 08 Jun 2012 12:43:06 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 06/08/2012 11:33 AM, Michael B?sch wrote:
> >
> > Larry, did you check with PIO?
> 
> No, I only used DMA. With the latest patch, compilation is Ok, and DMA works for 
> both kinds of firmware, while PIO fails for both.

Does PIO even work without that patch and with prop-firmware?

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120608/35b3ff47/attachment.sig>
