From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 20 Oct 2012 14:52:37 +0200
Subject: b43 does not work with 4353 in Macbook Pro 6,2
In-Reply-To: <CAMCJTp_kQgZ9QAKUVnNzLcSqAXf8sXX=s+3kCAC3ry85yyNKZQ@mail.gmail.com>
References: <CAMCJTp_kQgZ9QAKUVnNzLcSqAXf8sXX=s+3kCAC3ry85yyNKZQ@mail.gmail.com>
Message-ID: <50829E95.5030505@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/20/2012 02:32 PM, Jeroen van der Vegt wrote:
> Hi,
> 
> 
> When I load the B43 driver on my Macbook Pro 6,2 ('rmmod wl; modprobe
> b43') all modules are loaded fine but no network device appears. I'm
> running Ubuntu 12.04 (3.2.0-32).
> On this list I read that recompiling 'wireless-compat' with
> B43_BCMA_EXTRA='y' should help
> (http://lists.infradead.org/pipermail/b43-dev/2012-March/002457.html).
> I don't feel like having to compile my own kernel as I used to , so I
> hoped installing 'linux-backports-modules-cw-3.3-precise-generic'
> would help. This didn't change much however (features L and S appeared
> in dmesg) for the b43 driver but broke the wl driver.
> 
> It seems the option was deliberately disabled in the Ubuntu kernel:
> http://ubuntu.5.n6.nabble.com/PATCH-UBUNTU-Config-disable-CONFIG-B43-BCMA-EXTRA-td4975384.html
> :(
> 
> 
> Cheers,
> 
> Jeroen.
> 
> dmesg:
> [  658.485734] bcma-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17
> (level, low) -> IRQ 17
> [  658.485748] bcma-pci-bridge 0000:03:00.0: setting latency timer to 64
> [  658.485808] Core 0 found: ChipCommon (manuf 0x4BF, id 0x800, rev
> 0x22, class 0x0)
> [  658.485833] Core 1 found: IEEE 802.11 (manuf 0x4BF, id 0x812, rev
> 0x17, class 0x0)
> [  658.485890] Core 2 found: PCIe (manuf 0x4BF, id 0x820, rev 0x0F, class 0x0)
> [  658.558019] Failed to get SPROM: -71

Reading the sprom did not worked. This is probably a BCM43224 OTP, for
which support was added in kernel 3.4 to bcma.

> [  658.558103] Bus registered
> [  658.665460] cfg80211: Calling CRDA to update world regulatory domain
> [  658.732673] Broadcom 43xx driver loaded [ Features: PMNLS ]
> [  658.764829] cfg80211: World regulatory domain updated:
> [  658.764833] cfg80211:   (start_freq - end_freq @ bandwidth),
> (max_antenna_gain, max_eirp)
> [  658.764835] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
> (300 mBi, 2000 mBm)
> [  658.764838] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz),
> (300 mBi, 2000 mBm)
> [  658.764840] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
> (300 mBi, 2000 mBm)
> [  658.764842] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
> (300 mBi, 2000 mBm)
> [  658.764844] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
> (300 mBi, 2000 mBm)
> 
> 
> lspci -vvn|grep 43 -A7:
> 03:00.0 0280: 14e4:4353 (rev 01)
> 	Subsystem: 106b:0093
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 256 bytes
> 	Interrupt: pin A routed to IRQ 17
> 	Region 0: Memory at c1b00000 (64-bit, non-prefetchable) [size=16K]
> 	Capabilities: [40] Power Management version 3
> 

You device should be supported by b43 and brcmsmac. Please try out at
least kernel version 3.4 or a corresponding compat-wireless version.
There is also a ubuntu package named
linux-backports-modules-cw-3.4-precise-generic which contains a more
recent compat-wireles version.

Hauke
