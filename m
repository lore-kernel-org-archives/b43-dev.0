From: Fengguang Wu <fengguang.wu@intel.com>
Date: Sun, 18 May 2014 17:17:08 +0800
Subject: [wireless-next:master 83/118] sdio.c:undefined reference to
 `ssb_bus_unregister'
In-Reply-To: <CACna6rz6GQ62RL0eZufvp=f=zp93WRdRQduVn9vaO5d-MVEBWg@mail.gmail.com>
References: <53781383.4VhTkq6xna8cylNO%fengguang.wu@intel.com>
 <CACna6rz6GQ62RL0eZufvp=f=zp93WRdRQduVn9vaO5d-MVEBWg@mail.gmail.com>
Message-ID: <20140518091708.GA23402@localhost>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, May 18, 2014 at 11:01:09AM +0200, Rafa? Mi?ecki wrote:
> On 18 May 2014 03:57, kbuild test robot <fengguang.wu@intel.com> wrote:
> > tree:   git://git.kernel.org/pub/scm/linux/kernel/git/linville/wireless-next.git master
> > head:   f8b8a47e06a0d07219629c83de2a3b7ff1d5aa65
> > commit: fbe057d8a185d4b588bd5dc18ea43fd12ce3d689 [83/118] b43: drop SSB dependency
> > config: x86_64-randconfig-iv0-05180939 (attached as .config)
> >
> > All error/warnings:
> >
> >    drivers/built-in.o: In function `b43_sdio_remove':
> >>> sdio.c:(.text+0x1460ff): undefined reference to `ssb_bus_unregister'
> >    drivers/built-in.o: In function `b43_sdio_probe':
> >>> sdio.c:(.text+0x1462af): undefined reference to `ssb_bus_sdiobus_register'
> 
> I don't understand what's going on there :(
> 1) sdio.c is compiled if we have CONFIG_B43_SDIO
> 2) a) B43_SDIO depends on SSB_SDIOHOST_POSSIBLE
> 2) b) SSB_SDIOHOST_POSSIBLE depends on SSB
> 3) a) B43_SDIO selects SSB_SDIOHOST
> 3) b) SSB_SDIOHOST gives us ssb_bus_sdiobus_register
> 
> Does anyone has any idea what could go wrong?
> 
> Fengguang: please attach your bot's config.

Rafa?, the original email should have the .config attached.

Thanks,
Fengguang
