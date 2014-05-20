From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 20 May 2014 10:24:28 +0200
Subject: [PATCH] b43: xmit: set 5 GHz bit depending on current band
In-Reply-To: <20140520101825.3d928446@wiggum>
References: <1400568385-26182-1-git-send-email-zajec5@gmail.com>
 <537AFAA0.3070401@meshcoding.com>
 <CACna6rwa6zKX=ngSQhmWTrZcy_W7fjMrTmQ-A8XURZCVMX1nrA@mail.gmail.com>
 <537AFFEB.1040707@meshcoding.com>
 <CACna6ryTSKim3ckZsJnE_1zrXW-JFabZSaJrLrOFL+JgXzLLjQ@mail.gmail.com>
 <20140520101825.3d928446@wiggum>
Message-ID: <CACna6rzG9ePT5BtBjgMcCbsznNyB_cVm94A=6U+a2D=HsgdaRQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: Antonio Quartulli <antonio@meshcoding.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 20 May 2014 10:18, Michael B?sch <m@bues.ch> wrote:
> On Tue, 20 May 2014 09:23:28 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> You're probably right. It's just a bit historical, it matches bcm47xx
>> specs, Broadcom's public code, Broadcom headers and probably their
>> internal specs. That's why I didn't decide to really touch it, to
>> avoid confusion when comparing specs with the code.
>
>
> The thing is that the actual hardware bit is called GMODE.
> I guess we could rename that variable and add a comment, if it's really an issue.
> But not the #define for the hardware bit.

Thanks for your comment. In V2 I've extended "gmode" comment slightly,
so I hope it'll be fine now.
