From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Oct 2012 12:39:42 +0200
Subject: patches for b43-dev
In-Reply-To: <CAJJAcoeBqNP9aBCTnjRsrZfTaVrQ8ak_Zf_PtNs_-M_GsSJxBQ@mail.gmail.com>
References: <CAJJAcoeBqNP9aBCTnjRsrZfTaVrQ8ak_Zf_PtNs_-M_GsSJxBQ@mail.gmail.com>
Message-ID: <CACna6rz9O5EoFsdESJBgob+sZQCB9BUB2X=Mt9qWBW=njRcObA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/10/14 David Shwatrz <dshwatrz@gmail.com>:
> I have a question about the patches which are sent to this mailing list:
> against which tree are they made?
>
> I assume that they are not against wireless-testing as I see no "CC"
> to  wireless-testing mailing list. (at least when
> looking at the mailing list archives,
> http://lists.infradead.org/pipermail/b43-dev/).
>
> Is there some git tree for this mailing list ? In case there is, are
> there from time to time requests to
>  wireless-testing to pull from this tree?

I/we don't put John/wireless in git commit's CC, but mails include
them in To (mail's "to"). My way:
git send-email \
--no-chain-reply-to \
--from "Rafa? Mi?ecki ..." \
--to linux-wireless at ... \
--to "John W. Linville ..." \
--cc b43-dev at ... \
my-patches/

-- 
Rafa?
