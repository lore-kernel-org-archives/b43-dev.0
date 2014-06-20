From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 Jun 2014 15:46:36 +0200
Subject: BCM 4311 cannot connect to router under kernel 3.15
In-Reply-To: <20140620141352.cf66d6cf355510c0148a4d00@yahoo.co.uk>
References: <20140620141352.cf66d6cf355510c0148a4d00@yahoo.co.uk>
Message-ID: <CACna6rzC2EHmOuR1FFM4kWKAPqUBQij1EX=EXTz3k38BpX911w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 20 June 2014 15:13, Geoff <capsthorne@yahoo.co.uk> wrote:
> Everything has been running perfectly until the kernel was upgraded from 3.14 to
> 3.15 a couple of days ago.

First reported in:
[0] Linux 3.15: WLAN regression on WRL54GL/B43?

Fixed by:
[1] b43: fix frequency reported on G-PHY with /new/ firmware

The patch has yet to hit Linus's tree, then I'll be applied to older
(stable) trees. So hopefully you will see this fix in 3.15.2 or
3.15.3.

For now you have to stick to 3.14, or temporarily replace your
firmware (in /lib/firmware/b43) with the older version 478.104 (if you
know how).


[0] https://www.mail-archive.com/b43-dev at lists.infradead.org/msg03381.html
[1] https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=2fc68eb122c7ea6cd5be1fe7d6650c0beb2f4f40
