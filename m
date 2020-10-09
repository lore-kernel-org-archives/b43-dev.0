From: Taehee Yoo <ap420073@gmail.com>
Date: Fri, 9 Oct 2020 19:07:16 +0900
Subject: [PATCH net 000/117] net: avoid to remove module when its debugfs
 is being used
In-Reply-To: <87r1q8gdqk.fsf@suse.de>
References: <20201008155048.17679-1-ap420073@gmail.com>
 <1cbb69d83188424e99b2d2482848ae64@AcuMS.aculab.com>
 <62f6c2bd11ed8b25c1cd4462ebc6db870adc4229.camel@sipsolutions.net>
 <CAMArcTUkC2MzN9MiTu_Qwouj6rFf0g0ac2uZWfSKWHTW9cR8xA@mail.gmail.com>
 <87r1q8gdqk.fsf@suse.de>
Message-ID: <CAMArcTWBdqRG11XcFPvPTR2YpwfdDMuQ-_7WGow574QftUEGYA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicolai Stange <nstange@suse.de>
Cc: Johannes Berg <johannes@sipsolutions.net>, David Laight <David.Laight@aculab.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wil6210@qti.qualcomm.com" <wil6210@qti.qualcomm.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>

On Fri, 9 Oct 2020 at 14:39, Nicolai Stange <nstange@suse.de> wrote:
>

Hi Nicolai,
Thank you for the review!

> Taehee Yoo <ap420073@gmail.com> writes:
>
> > On Fri, 9 Oct 2020 at 01:14, Johannes Berg <johannes@sipsolutions.net> wrote:
> > On Thu, 2020-10-08 at 15:59 +0000, David Laight wrote:
> >
> >> From: Taehee Yoo
> >> > Sent: 08 October 2020 16:49
> >> >
> >> > When debugfs file is opened, its module should not be removed until
> >> > it's closed.
> >> > Because debugfs internally uses the module's data.
> >> > So, it could access freed memory.
>
> Yes, the file_operations' ->release() to be more specific -- that's not
> covered by debugfs' proxy fops.
>
>
> >> > In order to avoid panic, it just sets .owner to THIS_MODULE.
> >> > So that all modules will be held when its debugfs file is opened.
> >>
> >> Can't you fix it in common code?
> >
> >> Yeah I was just wondering that too - weren't the proxy_fops even already
> >> intended to fix this?
> >
> > I didn't try to fix this issue in the common code(debugfs).
> > Because I thought It's a typical pattern of panic and THIS_MODULE
> > can fix it clearly.
> > So I couldn't think there is a root reason in the common code.
>
> That's correct, ->owner should get set properly, c.f. my other mail in
> this thread.
>

Thanks a lot for verifying it!
Taehee
