From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 22 Apr 2010 12:21:17 -0500
Subject: System freezes with 2.6.33
In-Reply-To: <20100422161231.GA1941@happy.exit>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
	<20100420143358.GA1990@happy.exit>
	<20100420155140.14443.qmail@stuge.se>
	<20100420180704.74972858@Mobile-Workstation.localdomain>
	<20100420162751.25907.qmail@stuge.se>
	<4BCDDF5C.2040901@lwfinger.net> <20100422161231.GA1941@happy.exit>
Message-ID: <4BD0858D.7080903@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/22/2010 11:12 AM, yhager at yhager.com wrote:
> I have tested the same kernel, with CONFIG_B43_FORCE_PIO=y. The
> results are mostly the same. Full system freeze. Turning the radio off
> avoids the freeze. Turning the radio on would not immediately freeze -
> only when I tried to connect to a wireless network it did. 
> I also enabled CONFIG_B43_DEBUG, but no messages on the console that
> would testify a problem.

Is it possible for you to test with another mac80211-based wireless
device? I cannot think of any possibility for the system to lock up when
b43 is using PIO.

When the freeze occurs, how long do you leave it? There are some CPU
lockups that take as many as 2 minutes to be recognized by the kernel.

In Archlinux, how difficult is it to incorporate source from an external
tree and build the kernel?

Larry
