From: David Woodhouse <dwmw2@infradead.org>
Date: Fri, 12 Aug 2011 02:41:33 +0100
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <1311114796.3062.9.camel@shinybook.infradead.org>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
Message-ID: <1313113295.27274.53.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2011-07-19 at 15:33 -0700, David Woodhouse wrote:
> The other thing I observed that under ndiswrapper, the Windows driver
> (for BCM4331) was writing the full physical address to the TX_INDEX
> register, not an index at all.
> 
> Setup...
> W 4 159.866820 1 0xb06002c8 0x1f86c000 0x0 0
> W 4 159.866822 1 0xb06002cc 0x80000000 0x0 0
> R 4 159.866827 1 0xb06002c0 0x0 0x0 0
> W 4 159.866829 1 0xb06002c0 0x801 0x0 0
> 
> ... and use:
> W 4 197.207151 1 0xb06002c4 0x1f86c010 0x0 0
> 
> ... and again later:
> W 4 197.228596 1 0xb06002c4 0x1f86c020 0x0 0
> 
> Is that behaviour understood?

Having fixed b43 to do the same (and thanks to all of Rafa?'s work), I
now have my BCM4331 working with b43.

Without this change, if the TX descriptor ring was not aligned to 8KiB,
the hardware would get confused when we send the 256th DMA frame and
wrap back to slot zero.

I have to include the higher bits of the address in what I write to the
TXINDEX register, *and* I have to enable the DMA engine by writing to
TXCTL *after* setting the TXRING{HI,LO} registers when setting it up.

The brcmsmac driver seems to do this only if the TXRINGLO register
actually latches the low bits (write 0xff0, read back and see if you get
zero).

I also changed the values of B43_DMA64_[RT]XSTATDPTR to 0xfff, for
similar reasons ? sometimes bit 12 is set when it arguably shouldn't be,
because the hardware works strangely if the table isn't aligned.

-- 
dwmw2
