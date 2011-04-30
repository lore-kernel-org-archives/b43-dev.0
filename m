From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 30 Apr 2011 04:07:37 +0200
Subject: b43 -- 4312 and built-in/static kernel
In-Reply-To: <20110430012706.7ABA9E671D@smtp.hushmail.com>
References: <20110430012706.7ABA9E671D@smtp.hushmail.com>
Message-ID: <BANLkTi=EknVfoK7VM+tWGmLx7zonpQs98g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/30 Alfred B. M. Cordero <otto-pilot@hushmail.com>:
> I am building a static kernel. I have gotten the DVB card working
> by adding
> the .fw to linux/firmware and so I am doing the same thing with the
> 4312.
> The kernel builds fine, the 4312 is found and seems fine.
> dmesg reports the card, lspci shows it and so does ifconfig -a.
>
> ip link set dev wlan0 up pretty much hangs and none of the iw*
> commands
> work.
>
>
> The problem may be that at the request_firmware stage there is a
> mismatch
> between what I've compiled into the kernel and what
> request_firmware is
> requesting.

What mismatch?

I've noticed some delay when starting interface on LP-PHY card, didn't
debug this yet.

Did you try b43 as module? Did it work?

-- 
Rafa?
