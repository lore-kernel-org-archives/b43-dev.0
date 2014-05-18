From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 18 May 2014 13:23:17 +0200
Subject: [wireless-next:master 83/118] sdio.c:undefined reference to
 `ssb_bus_unregister'
In-Reply-To: <CACna6rz6GQ62RL0eZufvp=f=zp93WRdRQduVn9vaO5d-MVEBWg@mail.gmail.com>
References: <53781383.4VhTkq6xna8cylNO%fengguang.wu@intel.com>
 <CACna6rz6GQ62RL0eZufvp=f=zp93WRdRQduVn9vaO5d-MVEBWg@mail.gmail.com>
Message-ID: <CACna6rw8vSmrAFWJSDRiwYv9-Ywws8v6NMLYWE45F0r_4xtziA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 18 May 2014 11:01, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 18 May 2014 03:57, kbuild test robot <fengguang.wu@intel.com> wrote:
>> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/linville/wireless-next.git master
>> head:   f8b8a47e06a0d07219629c83de2a3b7ff1d5aa65
>> commit: fbe057d8a185d4b588bd5dc18ea43fd12ce3d689 [83/118] b43: drop SSB dependency
>> config: x86_64-randconfig-iv0-05180939 (attached as .config)
>>
>> All error/warnings:
>>
>>    drivers/built-in.o: In function `b43_sdio_remove':
>>>> sdio.c:(.text+0x1460ff): undefined reference to `ssb_bus_unregister'
>>    drivers/built-in.o: In function `b43_sdio_probe':
>>>> sdio.c:(.text+0x1462af): undefined reference to `ssb_bus_sdiobus_register'
>
> I don't understand what's going on there :(
> 1) sdio.c is compiled if we have CONFIG_B43_SDIO
> 2) a) B43_SDIO depends on SSB_SDIOHOST_POSSIBLE
> 2) b) SSB_SDIOHOST_POSSIBLE depends on SSB
> 3) a) B43_SDIO selects SSB_SDIOHOST
> 3) b) SSB_SDIOHOST gives us ssb_bus_sdiobus_register

Oh, there goes an answer:
CONFIG_B43=y
CONFIG_SSB=m

Above was possible because of:
# CONFIG_B43_BUSES_SSB is not set
