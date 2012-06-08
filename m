From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 08 Jun 2012 18:28:24 +0200
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
 n_queues))
In-Reply-To: <4FD22727.7000500@lwfinger.net>
 (sfid-20120608_182413_078769_E0EF593E)
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339136879.5832.1.camel@jlt3.sipsolutions.net>
 <1339137689.5832.2.camel@jlt3.sipsolutions.net>
 <CAHsu+b9uyohfFG46R7QHht6tD3MVUzk4_LJeXp+CC2bRv=NihA@mail.gmail.com>
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
 <4FD22727.7000500@lwfinger.net> (sfid-20120608_182413_078769_E0EF593E)
Message-ID: <1339172904.5748.18.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Andre Heider <a.heider@gmail.com>, Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>

On Fri, 2012-06-08 at 11:24 -0500, Larry Finger wrote:
> On 06/08/2012 11:05 AM, Andre Heider wrote:

> >>>> Hopefully this is better: http://p.sipsolutions.net/017d73ac0688f863.txt

> Strange. I commented out the BUILD_BUG statements in version 017d73a,

Right, that would do it. I think we may want to add a
#define B43_HW_QUEUE_NUM 5

and then use it in all the right places instead of changing
B43_QOS_QUEUE_NUM maybe?

>  and it 
> worked for me with both flavors of fw.

Well, good to know... I wonder what Andre's bug is then, maybe not
related to this?

johannes
