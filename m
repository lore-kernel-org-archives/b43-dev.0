From: Peter Stuge <peter@stuge.se>
Date: Mon, 19 Apr 2010 18:54:54 +0200
Subject: System freezes with 2.6.33
In-Reply-To: <20100418071932.GB15229@happy.exit>
References: <20100418071932.GB15229@happy.exit>
Message-ID: <20100419165454.17544.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

yhager at yhager.com wrote:
> After upgrading my system to 2.6.33
> (http://www.archlinux.org/packages/core/i686/kernel26/) I am
> experiencing complete system lockups.
..
> The hardware is HP-2133 (mini note).

I can't help but think that this may also be related to how PCIe pins
are multiplexed on this chipset.

Does that kernel happen to have a kernel graphics driver enabled?
Try disabling it in that case, and see what happens.

Difficult issue this. I think you will need to bisect to find a
commit. I hope that commit will be directly related to the problem.


//Peter
