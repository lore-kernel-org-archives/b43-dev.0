From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 24 Feb 2014 09:46:37 +0100
Subject: b43 slow performance of high packet loss, linux-3.13 running on
 macbook10,1, is there anyway to reduce packet loss / improve performance ?
In-Reply-To: <CAH5vBdKfpEgeK0Kv_abnzWDUm+qca7V_atcqgV0tgMy4DyzPDw@mail.gmail.com>
References: <CAH5vBdKfpEgeK0Kv_abnzWDUm+qca7V_atcqgV0tgMy4DyzPDw@mail.gmail.com>
Message-ID: <CACna6rwpLNNT2njE24q36P0T+T9nD6nZ0TLZQ8MTHmAAcX+2vg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-02-24 9:23 GMT+01:00 crquan <crquan@gmail.com>:
> In that table, it has my device 14e4:4331 supported b/g only, I tried
> to setup my wifi router to be b/g only but seems didn't help, is there
> anything else (or iw commands) I can try ?
>
> 14e4:4331   yes (3.2-rc3+)   BCM4331     b/g    HT (r1)           wl

Unfortunately, no. b43 has only basic support for BCM4331. I've
managed to connect BCM4331 (with it's ugly modified mini PCIe
connector) to my PC, but I still didn't manage to find antenna
connectors (W.FL2).
