From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Tue, 17 Aug 2010 13:23:37 +0100
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <4C69DF79.2020900@lwfinger.net>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>
	<20100816204154.5100b604@boulder.homenet>
	<20100816233544.40f0e1d4@boulder.homenet>
	<4C69CF85.2020809@lwfinger.net>
	<20100817010923.589d8063@boulder.homenet>
	<20100817011455.4919cfbb@boulder.homenet>
	<4C69DF79.2020900@lwfinger.net>
Message-ID: <20100817132337.01392797@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Mon, 16 Aug 2010 20:01:45 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:
> My wl came from hybrid-portsrc-x86_32-v5.60.48.36.tar.gz. My kernel is
> 2.6.36-rc1 from mainline.
> 
> Very strange that a patch to ssb, which is a module that cannot even
> load due to being blacklisted, can cause this kind of problem. Are
> you warm or cold rebooting?

I am using the same version of wl.

On booting up my netbook this morning, I found that I get a wholesome
set of bugs reported by dmesg, even without wl available to the
kernel and with the ssb patch reverted. I think the ssb patch is an
innocent bystander which just happened first to reveal a bug in the
2.6.35.2 kernel.  A lot seems to depend on the starting state of the
hardware - a cold boot in a stock 2.6.35.2 kernel will trigger it
(what I got this morning). A warm boot on a 2.6.35.2 kernel with the ssb
patch will also trigger it (what I got yesterday).

The fact that something tries to load a blacklisted wl module would
seem to show there is something fairly fundamentally amiss, possibly
with the ACPI code. In any event, the conclusion I have reached is that
the 2.6.35.2 kernel is hopelessly broken on my netbook hardware. I do
not now think there is any file system corruption: it just gave that
appearance because of the saving of the state of the machine between
warm boots.

Reverting to 2.6.35.1 solves this.  Probably 2.6.36-rc1 would be OK as
well.  I might later today try the ssb patch on the 2.6.35.1 kernel,
but it doesn't look as if it solves the DMA errors.  However,
yesterday's tests clearly aren't conclusive about anything.

Chris
