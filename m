From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 30 Nov 2011 15:27:40 -0600
Subject: low throughputs with 14e4:4353
In-Reply-To: <47FBA4BF-B673-43AE-9271-9976878D130D@ing.unibs.it>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
 <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
 <CACna6ryZiQnCeOHSDZPA0zJ679erJJNtAwU6qqGdVKnpiai4cg@mail.gmail.com>
 <47FBA4BF-B673-43AE-9271-9976878D130D@ing.unibs.it>
Message-ID: <4ED69FCC.7030200@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/30/2011 09:05 AM, francesco.gringoli at ing.unibs.it wrote:
> Larry,
>
> I found your message on linux-wireless (end of July) reporting that the throughput was about 10Mb/s with bcma. You mention kernel "master-2011-07-26-150-g4ea94a9". I gave it a try (it is a 3.0.0 if I'm not wrong) but I'm still having very low throughput.
>
> Rafal: so you observe good/bad throughputs at random? Sometimes after cold boot it works fine, other times bad?
>
> Did you modprobe using some options?

My netperf results (3 sec samples) are:

TCP_MAERTS Test:  13.60 14.41 16.05 15.01 14.70 15.36 14.72 15.07 12.37 11.01
Results: max 16.05, min 11.01. Mean 14.23(1.44)

TCP_STREAM Test:   3.00  1.89  1.23  2.12  0.91  1.59  1.46  0.71  1.99  2.12
Results: max  3.00, min  0.71. Mean  1.70(0.64)

As you can see, RX is OK, but TX is quite low.

I will run the same test with brcmsmac later. Their damned Kconfig won't let me 
build both b43 and brcmsmac at the same time.

Larry
