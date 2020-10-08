From: Taehee Yoo <ap420073@gmail.com>
Date: Fri, 9 Oct 2020 01:37:26 +0900
Subject: [PATCH net 000/117] net: avoid to remove module when its debugfs
 is being used
In-Reply-To: <62f6c2bd11ed8b25c1cd4462ebc6db870adc4229.camel@sipsolutions.net>
References: <20201008155048.17679-1-ap420073@gmail.com>
 <1cbb69d83188424e99b2d2482848ae64@AcuMS.aculab.com>
 <62f6c2bd11ed8b25c1cd4462ebc6db870adc4229.camel@sipsolutions.net>
Message-ID: <CAMArcTUkC2MzN9MiTu_Qwouj6rFf0g0ac2uZWfSKWHTW9cR8xA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: David Laight <David.Laight@aculab.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Nicolai Stange <nicstange@gmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wil6210@qti.qualcomm.com" <wil6210@qti.qualcomm.com>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>

On Fri, 9 Oct 2020 at 01:14, Johannes Berg <johannes@sipsolutions.net> wrote:
On Thu, 2020-10-08 at 15:59 +0000, David Laight wrote:

Hi Johannes and David,
Thank you for the review!

> From: Taehee Yoo
> > Sent: 08 October 2020 16:49
> >
> > When debugfs file is opened, its module should not be removed until
> > it's closed.
> > Because debugfs internally uses the module's data.
> > So, it could access freed memory.
> >
> > In order to avoid panic, it just sets .owner to THIS_MODULE.
> > So that all modules will be held when its debugfs file is opened.
>
> Can't you fix it in common code?

> Yeah I was just wondering that too - weren't the proxy_fops even already
> intended to fix this?

I didn't try to fix this issue in the common code(debugfs).
Because I thought It's a typical pattern of panic and THIS_MODULE
can fix it clearly.
So I couldn't think there is a root reason in the common code.

> The modules _should_ be removing the debugfs files, and then the
> proxy_fops should kick in, no?

If I understand your mention correctly,
you mean that when the module is being removed, the opened file
should be closed automatically by debugfs filesystem.
Is that right?

> So where's the issue?

> johannes

Thanks a lot!
Taehee
