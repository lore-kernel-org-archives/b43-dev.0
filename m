From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 14 Apr 2011 18:07:29 -0500
Subject: Request for bisecting DMA partial fix
In-Reply-To: <BANLkTik9wATNqSodCVCKhUumi=Qxyz80Hg@mail.gmail.com>
References: <AANLkTikLFuFd=155fO-VScNh7XKtZCMcR0DTo1V4-hHu@mail.gmail.com>	<AANLkTintrxtNDKJRPiNXAvr2XX3Fa5ZNBqwca59d9GfV@mail.gmail.com>	<20101126173952.GC2370@markov>	<AANLkTi=g3bXnGiqC3zH6gFVi8tLhoiHYbDnhWOXptRk7@mail.gmail.com>	<20101211085104.GB22346@markov>	<AANLkTi=zLV_BrJ2XqGNc9YVBmnWRDW3KYKFx2DhFeRiw@mail.gmail.com>	<20101214042351.GE6480@hilbert.ericgar.com>
	<BANLkTik9wATNqSodCVCKhUumi=Qxyz80Hg@mail.gmail.com>
Message-ID: <4DA77E31.2090708@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/14/2011 01:39 PM, Rafa? Mi?ecki wrote:
> Guys, is there anyone experiencing DMA errors on high transfer? I'd be
> even interested in getting SSH access to affected machine, if noone
> has time to debug this.

I have a netbook that gets out-of-order TX descriptors on a 14e4:4315 under 
heavy loads. I am not sure if this is a regression, a problem with modern 
firmware, or what. This is happening with 2.6.38. I'm currently testing to see 
if it happens with earlier versions.

Larry
