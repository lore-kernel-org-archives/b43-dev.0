From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 20 Oct 2010 13:31:54 -0500
Subject: PIO mode
In-Reply-To: <20101020175427.GQ1593@home.pavel.comp>
References: <20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
	<4CBF28C0.9000404@lwfinger.net>
	<20101020175427.GQ1593@home.pavel.comp>
Message-ID: <4CBF359A.6030700@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/20/2010 12:54 PM, Paul Fertser wrote:
> It looks like we're seeing two different issues.

I agree.

> BTW, with this test i can't reproduce my "fatal dma" problems if i
> modprobe/rmmod wl first, so that's somehow related. Do you have any ideas
> on how i can further help with debugging?

Could you please provide the "warm" equivalent of
b43-cold-boot.trace-head.txt.gz? Do a cold boot followed by an load/unload of
wl, start the trace, and load b43. I would like to see what in the registers is
different.

Thanks,

Larry
