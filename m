From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 16 Jun 2011 11:22:00 +0200
Subject: Degradation on b43 14e4:4315 ?
In-Reply-To: <4DF9BBCE.10702@snafu.de>
References: <4DF9BBCE.10702@snafu.de>
Message-ID: <BANLkTinurxCysuDOFp7WMbC488hVAvBiag@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey,

2011/6/16 Oncaphillis <oncaphillis@snafu.de>:
> ?I'm using my b43 14e4:4315 on my acer notebook for quite a while now.
> I've started to use a wireless git-kernel and helped a bit in debugging
> initial problems with this device. Since the early Fedora 14 it seemed to
> work out of the box, but now when Fedora 14 moved to 2.6.35.12+ kernels
> I loose connections on heavy transfer.

Do you get something interesting from "dmesg | grep b43"?


> Where there developments during the 2.6.35.x developments which could
> explain such behaviour ?

Do you mean 2.6.35 was working fine and 2.6.35.12 already contains
regression? Were you using clean 2.6.35 earlier with success?

Did you/Fedora update firmware in /lib/firmware/b43 meanwhile?

-- 
Rafa?
