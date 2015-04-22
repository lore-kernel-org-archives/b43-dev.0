From: Lindsay Roberts <k@lindsayr.com>
Date: Wed, 22 Apr 2015 21:19:20 +0300
Subject: 4331: Repeated, intermittent connectivity drops while reporting full
 signal
Message-ID: <b00eb45fd45d6ac208172a26753b5982@webmail.webfaction.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

With certain access points, this machine experiences frequent drops in 
connectivity while the interface reports good signal.

To clarify: packets no longer flow for long periods at a time, with no 
other indication of issues. Often, these periods only last tens of 
seconds, but sometimes they last until I rmmod/modprobe b43 (the 
quickest cure). I have no such issues using the same hardware with the 
... os provided with the hardware, nor do others using the same access 
point from many other pieces of hardware experience this issue -- 
although there have been reports of low signal level from further away.

The only software indication of this state (apart from missing packets) 
seems to be a somewhat bogus reported dBm: in the bad states either 0 or 
+7 (as reported by "iw dev wlan0 link").

Final note on occurrence: no issues with many other access points, 
although under v3.16 or v3.17 the set of access points I had the same 
problem with was far higher, somewhere around 50%. Admittedly I have not 
bisected the change that solved it for the majority.

// Card:

$ lspci -vvnnkd :4331
03:00.0 Network controller [0280]: Broadcom Corporation BCM4331 
802.11a/b/g/n [14e4:4331] (rev 02)
         Subsystem: Apple Inc. AirPort Extreme [106b:010f]
         Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- 
ParErr- Stepping- SERR- FastB2B- DisINTx-
         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
         Latency: 0, Cache Line Size: 256 bytes
         Interrupt: pin A routed to IRQ 17
         Region 0: Memory@a0500000 (64-bit, non-prefetchable) 
[size=16K]
         Capabilities: <access denied>
         Kernel driver in use: bcma-pci-bridge
         Kernel modules: bcma

// Kernel: v3.19 tag with no patches

$ ./scripts/ver_linux
Linux archy 3.19.0-lr-b43 #5 SMP PREEMPT Mon Mar 2 22:38:05 EET 2015 
x86_64 GNU/Linux

Gnu C                  4.9.2
Gnu make               4.1
binutils               2.25.0
util-linux             2.26.1
mount                  debug
module-init-tools      19
e2fsprogs              1.42.12
jfsutils               1.1.15
reiserfsprogs          3.6.24
xfsprogs               3.2.2
pcmciautils            018
PPP                    2.4.7
Linux C Library        Dynamic linker (ldd)   2.21
Linux C++ Library      6.0.20
Procps                 3.3.10
Net-tools              2.10-alpha
Kbd                    2.0.2
Sh-utils               8.23
wireless-tools         30
Modules Loaded         rndis_host cdc_ether usbnet mii b43 ctr ccm fuse 
arc4 mac80211 joydev msr cfg80211 ssb rng_core ecb cpufreq_stats pcmcia 
coretemp pcmcia_core mousedev iTCO_wdt iTCO_vendor_support intel_rapl 
iosf_mbi snd_hda_codec_hdmi x86_pkg_temp_thermal intel_powerclamp 
snd_hda_codec_cirrus snd_hda_codec_generic applesmc kvm_intel 
input_polldev hwmon kvm btusb bluetooth crct10dif_pclmul crc32_pclmul 
crc32c_intel ghash_clmulni_intel aesni_intel uvcvideo aes_x86_64 lrw 
gf128mul glue_helper videobuf2_vmalloc ablk_helper videobuf2_memops i915 
videobuf2_core snd_hda_intel cryptd v4l2_common snd_hda_controller 
videodev bcm5974 evdev rfkill media hid_generic snd_hda_codec microcode 
mac_hid drm_kms_helper pcspkr sbs bcma drm snd_hwdep sbshc intel_gtt 
snd_pcm i2c_i801 apple_gmux snd_timer i2c_algo_bit i2c_core lpc_ich 
apple_bl video snd battery mei_me mei button shpchp soundcore processor 
ac sch_fq_codel ext4 crc16 mbcache jbd2 hid_apple usbhid hid sd_mod ahci 
libahci libata scsi_mod xhci_pci sdhci_pci sdhci ehci_pci xhci_hcd 
led_class ehci_hcd mmc_core usbcore usb_common

// Relevant .config:

CONFIG_B43=m
CONFIG_B43_BCMA=y
CONFIG_B43_SSB=y
CONFIG_B43_BUSES_BCMA_AND_SSB=y
# CONFIG_B43_BUSES_BCMA is not set
# CONFIG_B43_BUSES_SSB is not set
CONFIG_B43_PCI_AUTOSELECT=y
CONFIG_B43_PCICORE_AUTOSELECT=y
CONFIG_B43_PCMCIA=y
CONFIG_B43_SDIO=y
CONFIG_B43_BCMA_PIO=y
CONFIG_B43_PIO=y
CONFIG_B43_PHY_G=y
CONFIG_B43_PHY_N=y
CONFIG_B43_PHY_LP=y
CONFIG_B43_PHY_HT=y
CONFIG_B43_LEDS=y
CONFIG_B43_HWRNG=y
CONFIG_B43_DEBUG=y

CONFIG_CFG80211=m
# CONFIG_NL80211_TESTMODE is not set
CONFIG_CFG80211_DEVELOPER_WARNINGS=y
# CONFIG_CFG80211_REG_DEBUG is not set
CONFIG_CFG80211_DEFAULT_PS=y
CONFIG_CFG80211_DEBUGFS=y
# CONFIG_CFG80211_INTERNAL_REGDB is not set
CONFIG_CFG80211_WEXT=y
CONFIG_LIB80211=m
CONFIG_LIB80211_CRYPT_WEP=m
CONFIG_LIB80211_CRYPT_CCMP=m
CONFIG_LIB80211_CRYPT_TKIP=m
# CONFIG_LIB80211_DEBUG is not set
CONFIG_MAC80211=m
CONFIG_MAC80211_HAS_RC=y
CONFIG_MAC80211_RC_MINSTREL=y
CONFIG_MAC80211_RC_MINSTREL_HT=y
# CONFIG_MAC80211_RC_MINSTREL_VHT is not set
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=y
CONFIG_MAC80211_RC_DEFAULT="minstrel_ht"
CONFIG_MAC80211_MESH=y
CONFIG_MAC80211_LEDS=y
CONFIG_MAC80211_DEBUGFS=y
# CONFIG_MAC80211_MESSAGE_TRACING is not set
CONFIG_MAC80211_DEBUG_MENU=y
# CONFIG_MAC80211_NOINLINE is not set
CONFIG_MAC80211_VERBOSE_DEBUG=y
# CONFIG_MAC80211_MLME_DEBUG is not set
CONFIG_MAC80211_STA_DEBUG=y
CONFIG_MAC80211_HT_DEBUG=y
# CONFIG_MAC80211_OCB_DEBUG is not set
# CONFIG_MAC80211_IBSS_DEBUG is not set
CONFIG_MAC80211_PS_DEBUG=y
# CONFIG_MAC80211_MPL_DEBUG is not set
# CONFIG_MAC80211_MPATH_DEBUG is not set
# CONFIG_MAC80211_MHWMP_DEBUG is not set
# CONFIG_MAC80211_MESH_SYNC_DEBUG is not set
CONFIG_MAC80211_MESH_CSA_DEBUG=y
# CONFIG_MAC80211_MESH_PS_DEBUG is not set
# CONFIG_MAC80211_TDLS_DEBUG is not set
# CONFIG_MAC80211_DEBUG_COUNTERS is not set

// dmesg fragment:

[Tue Mar 24 14:57:43 2015] cfg80211: Calling CRDA to update world 
regulatory domain
[Tue Mar 24 14:57:43 2015] b43-phy41: Broadcom 4331 WLAN found (core 
revision 29)
[Tue Mar 24 14:57:43 2015] b43-phy41: Found PHY: Analog 9, Type 7 (HT), 
Revision 1
[Tue Mar 24 14:57:43 2015] b43-phy41: Found Radio: Manuf 0x17F, ID 
0x2059, Revision 0, Version 1
[Tue Mar 24 14:57:43 2015] b43-phy41 warning: 5 GHz band is unsupported 
on this PHY
[Tue Mar 24 14:57:43 2015] Broadcom 43xx driver loaded [ Features: PMNLS 
]
[Tue Mar 24 14:57:43 2015] ieee80211 phy41: Selected rate control 
algorithm 'minstrel_ht'
[Tue Mar 24 14:57:43 2015] b43-phy41: Loading firmware version 784.2 
(2012-08-15 21:35:19)
[Tue Mar 24 14:57:43 2015] b43-phy41 debug: Chip initialized
[Tue Mar 24 14:57:43 2015] b43-phy41 debug: 64-bit DMA initialized
[Tue Mar 24 14:57:43 2015] b43-phy41 debug: QoS enabled
[Tue Mar 24 14:57:43 2015] b43-phy41 debug: Wireless interface started
[Tue Mar 24 14:57:43 2015] b43-phy41 debug: Adding Interface type 2
[Tue Mar 24 14:57:45 2015] wlan0: authenticate with <access-point-mac>
[Tue Mar 24 14:57:45 2015] wlan0: Allocated STA <access-point-mac>
[Tue Mar 24 14:57:45 2015] wlan0: Inserted STA <access-point-mac>
[Tue Mar 24 14:57:45 2015] wlan0: send auth to <access-point-mac> (try 
1/3)
[Tue Mar 24 14:57:45 2015] wlan0: authenticated
[Tue Mar 24 14:57:45 2015] wlan0: moving STA <access-point-mac> to state 
2
[Tue Mar 24 14:57:45 2015] wlan0: associate with <access-point-mac> (try 
1/3)
[Tue Mar 24 14:57:45 2015] wlan0: RX AssocResp from <access-point-mac> 
(capab=0x1411 status=0 aid=9)
[Tue Mar 24 14:57:45 2015] wlan0: moving STA <access-point-mac> to state 
3
[Tue Mar 24 14:57:45 2015] wlan0: associated
[Tue Mar 24 14:57:45 2015] b43-phy41 debug: Using hardware based 
encryption for keyidx: 0, mac: <access-point-mac>
[Tue Mar 24 14:57:45 2015] b43-phy41 debug: Using hardware based 
encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[Tue Mar 24 14:57:45 2015] wlan0: moving STA <access-point-mac> to state 
4
[Tue Mar 24 14:58:17 2015] wlan0: deauthenticating from 
<access-point-mac> by local choice (Reason: 3=DEAUTH_LEAVING)
[Tue Mar 24 14:58:17 2015] b43-phy41 debug: Disabling hardware based 
encryption for keyidx: 0, mac: <access-point-mac>
[Tue Mar 24 14:58:17 2015] wlan0: moving STA <access-point-mac> to state 
3
[Tue Mar 24 14:58:17 2015] wlan0: moving STA <access-point-mac> to state 
2
[Tue Mar 24 14:58:17 2015] wlan0: moving STA <access-point-mac> to state 
1
[Tue Mar 24 14:58:17 2015] wlan0: Removed STA <access-point-mac>
[Tue Mar 24 14:58:17 2015] wlan0: Destroyed STA <access-point-mac>
[Tue Mar 24 14:58:17 2015] wlan0: dropped frame to 00:00:00:00:00:00 
(unauthorized port)
[Tue Mar 24 14:58:17 2015] wlan0: dropped frame to 00:00:00:00:00:00 
(unauthorized port)
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: Disabling hardware based 
encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: Removing Interface type 2
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: Wireless interface stopped
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 rx_ring: Used slots 
2/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 tx_ring_AC_BK: Used 
slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 tx_ring_AC_BE: Used 
slots 62/256, Failed frames 6/2138 = 0.2%, Average tries 1.55
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 tx_ring_AC_VI: Used 
slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 tx_ring_AC_VO: Used 
slots 4/256, Failed frames 0/56 = 0.0%, Average tries 1.10
[Tue Mar 24 14:58:18 2015] b43-phy41 debug: DMA-64 tx_ring_mcast: Used 
slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00

// iw dev wlan0 link for the access point:

Connected to <access-point-mac> (on wlan0)
	SSID: <access-point-ssid>
	freq: 2412
	RX: 1699945 bytes (4604 packets)
	TX: 506653 bytes (2820 packets)
	signal: -42 dBm
	tx bitrate: 24.0 MBit/s

	bss flags:	short-slot-time
	dtim period:	1
	beacon int:	100

// Full log. This is 3 way interleaved tail of dmesg, iw dev wlan0 link, 
and ping -DO kernel.org. All of /sys/kernel/debug/b43/*/debug_* set to 
Y.

plain [2.2MB]:
http://lindsayr.com/logs/b43-4331-frequent-conn-drops-lr.log

gz [64KB]:
http://lindsayr.com/logs/b43-4331-frequent-conn-drops-lr.log.gz

There are correlations between the presumably bogus dBm values and 
failed pings visible.

Happy to provide any additional information and/or try other avenues.

Thanks,

Lindsay
