From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 10 Jan 2012 08:29:33 +0100
Subject: BCM43231
In-Reply-To: <CACna6ryJT1Nw8Yxrj8CftERjO=y7kYc-9cTP5Bj-N-=NniAhdg@mail.gmail.com>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
 <20120109222544.11008.qmail@stuge.se>
 <CACna6ryJT1Nw8Yxrj8CftERjO=y7kYc-9cTP5Bj-N-=NniAhdg@mail.gmail.com>
Message-ID: <CACna6ryuR1hoJGH1Gy_v_N-HUhgL_8rxZf_-9q=DPQW-ERGX0w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Abimanyu Gottumukkala <me@abimanyu.in>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org

W dniu 10 stycznia 2012 08:00 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> I've quickly tried usbmon userspace tool, but not much more luck with
> it. Example from this tool:
>
> f2c19e40 6.317817 S Ci:2:013:0 s 80 06 0200 0000 0027 39 <
> f2c19e40 6.318305 C Ci:2:013:0 0 39 =
> ? ?09022700 010100a0 64090400 0003ff02 ff000705 81031000 04070582 02000200
> ? ? . . ' . ?. . . . ?d . . . ?. . . . ?. . . . ?. . . . ?. . . . ?. . . .
>
> Maybe it requires some switch or sth... unfortunately it's not
> documented at all ;/

usbmon -s 1024 > dump.txt
:)

-- 
Rafa?
