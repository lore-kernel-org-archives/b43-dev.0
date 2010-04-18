From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 18 Apr 2010 11:16:49 -0500
Subject: System freezes with 2.6.33
In-Reply-To: <20100418071932.GB15229@happy.exit>
References: <20100418071932.GB15229@happy.exit>
Message-ID: <4BCB3071.8030500@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/18/2010 02:19 AM, yhager at yhager.com wrote:
> Hi,
> 
> After upgrading my system to 2.6.33
> (http://www.archlinux.org/packages/core/i686/kernel26/) I am
> experiencing complete system lockups.
> 
> I confirmed that this happens when the b43 drives is on ahd I try to
> connect to the network. When I remove the module, the system works fine
> for hours. When it is on, I have a few minutes, till a complete freeze.
> 
> There is nothing in the kernel logs, or dmesg, or anywhere I could
> find. I tried reinstalling the firmware, but it didn't change anything.
> 
> The hardware is HP-2133 (mini note).

Yours is the first report of such freezes. As there is a possibility of
info being logged, but not being written and saved on disk, I would like
you to switch to the logging console (Ctrl+Alt+F10) immediately after
bringing the system up and starting the connection. Does anything show
there? I do not have access to a card like yours, but I have tested with
a 14e4:4311, which is similar.

Larry
