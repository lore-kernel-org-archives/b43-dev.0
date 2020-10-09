From: Steve deRosier <derosier@gmail.com>
Date: Fri, 9 Oct 2020 08:33:41 -0700
Subject: [PATCH net 000/117] net: avoid to remove module when its debugfs
 is being used
In-Reply-To: <4a58caee3b6b8975f4ff632bf6d2a6673788157d.camel@sipsolutions.net>
References: <20201008155048.17679-1-ap420073@gmail.com>
 <1cbb69d83188424e99b2d2482848ae64@AcuMS.aculab.com>
 <62f6c2bd11ed8b25c1cd4462ebc6db870adc4229.camel@sipsolutions.net>
 <87v9fkgf4i.fsf@suse.de>
 <fd8aaf06b53f32eae7b5bdcec2f3ea9e1f419b1d.camel@sipsolutions.net>
 <CAMArcTUdGPH5a0RTUiNoLvuQtdnXHOCwStJ+gp_noaNEzgSA1Q@mail.gmail.com>
 <4a58caee3b6b8975f4ff632bf6d2a6673788157d.camel@sipsolutions.net>
Message-ID: <CALLGbRKFOcSDX6yw9W=8fzKJw+GDdL0XSsWYq_kymvDPkz74KQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Taehee Yoo <ap420073@gmail.com>, Nicolai Stange <nstange@suse.de>, David Laight <David.Laight@aculab.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wil6210@qti.qualcomm.com" <wil6210@qti.qualcomm.com>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>

On Fri, Oct 9, 2020 at 3:22 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Fri, 2020-10-09 at 19:15 +0900, Taehee Yoo wrote:
> >
> > Okay, as you mentioned earlier in 001/117 patch thread,
> > I will squash patches into per-driver/subsystem then send them as v2.
>
> Give me a bit. I think I figured out a less intrusive way that at least
> means we don't have to do it if the fops doesn't have ->release(), which
> is the vast majority.
>

While I'm all for a patch that fixes something at a single level
instead of touching 100s of files, let me ask a loosely related, but
more basic, question: Should `->owner` be set properly in each driver?
 Or the flip of that, should we be considering that it isn't a
semantic error? I don't know the answer myself, I just thought to ask
the question.

IMHO, if true that `->owner` should be set for "correctness", and even
if we fix the debugfs problem elsewhere, perhaps this series (squashed
of course) should be merged.

- Steve
