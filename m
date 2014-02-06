From: grarpamp <grarpamp@gmail.com>
Date: Wed, 5 Feb 2014 23:34:46 -0500
Subject: Need to match driver to microcode?
In-Reply-To: <52F2EA75.3080400@lwfinger.net>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
Message-ID: <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Feb 5, 2014 at 8:50 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> If you had one of the newer cores, then you needed newer firmware to get the
> correct file, but the older ones worked. However, I should never trust my
> memory.

Correct my understanding... 'cores' refers to physical hardware
devices/revisions from Broadcom? So if I 'had newer cores', I'd need
to find newer 'firmware aka: microcode' to support them. Because
'older ones aka: firmware files' would not in fact work for me
since they would not have support for the new physical core
I posess? ie: I see newer files from say Linksys have more
ucodeN.fw N'umbers' available inside them than their older files..

> The TX and RX headers changed with firmware version 598.314.

598.314 is not now in fwcutter, was it at one time present and
then removed?

> change in the driver was introduced with commit 17030f4 in such a way that
> the older firmware versions still worked.
>
> The two commits are at the bottom of the page
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43?ofs=200.

Looking them over.

> Ah, I know it by a different number.

What number is that?
How does something like '6.30.102.9 (r366174)' on the wrapper
relate to its corresponding internal '784.2'? What are those
strings each describing?

And is there a supposed changelog, perhaps but
not necessarily from Broadcom, for what changed
in the different firmwares that we find?

Thanks.
