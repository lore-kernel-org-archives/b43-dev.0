From: =?us-ascii?Q?Vaclav=20Peroutka?= <vaclavpe@seznam.cz>
Date: Tue, 05 Jun 2012 22:11:45 +0200 (CEST)
Subject: =?us-ascii?Q?BCM4318=20problem=20on=20Kubuntu=20?=
Message-ID: <315651.5469.14371-10360-1586159934-1338927105@seznam.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I updated my Kubuntu and I still have problems with BCM4318 driver. Unfortunately I can not install any newer Ubuntu as my old notebook Amilo 8010 always freezes during booting of the live CD.

Can somebody know, what is wrong ?

I have following system:
$ uname -a
Linux malamys-laptop 2.6.32-41-generic #89-Ubuntu SMP Fri Apr 27 22:22:09 UTC 2012 i686 GNU/Linux

$ lspci -vnn | grep 14e4
06:04.0 Network controller [0280]: Broadcom Corporation BCM4318 [AirForce One 54g] 802.11g Wireless LAN Controller [14e4:4318] (rev 02)

$ lsmod | grep b43
b43                   163556  0 
mac80211              205434  1 b43
cfg80211              126528  2 b43,mac80211
ssb                    38934  1 b43
led_class               2864  2 b43,sdhci

excerpt of /var/log/messages
Jun  5 22:39:26 malamys-laptop kernel: [   28.708196] b43-phy0: Broadcom 4318 WLAN found (core revision 9)
Jun  5 22:39:26 malamys-laptop kernel: [   28.718799] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio1/input/i
nput4
Jun  5 22:39:26 malamys-laptop kernel: [   28.747484] type=1505 audit(1338928766.914:11):  operation="profile_load" pid=684 name=
"/usr/lib/cups/backend/cups-pdf"
Jun  5 22:39:26 malamys-laptop kernel: [   28.755714] r8169: eth0: link down
Jun  5 22:39:26 malamys-laptop kernel: [   28.755990] ADDRCONF(NETDEV_UP): eth0: link is not ready
Jun  5 22:39:26 malamys-laptop kernel: [   28.808940] Bluetooth: L2CAP ver 2.14
Jun  5 22:39:26 malamys-laptop kernel: [   28.808946] Bluetooth: L2CAP socket layer initialized
Jun  5 22:39:27 malamys-laptop kernel: [   28.857917] Registered led device: b43-phy0::tx
Jun  5 22:39:27 malamys-laptop kernel: [   28.857939] Registered led device: b43-phy0::rx
Jun  5 22:39:27 malamys-laptop kernel: [   28.857959] Registered led device: b43-phy0::radio
Jun  5 22:39:27 malamys-laptop kernel: [   28.858059] Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
Jun  5 22:39:27 malamys-laptop kernel: [   28.930469] [drm] initialized overlay support
Jun  5 22:39:27 malamys-laptop kernel: [   29.129631] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Jun  5 22:39:27 malamys-laptop kernel: [   29.129636] Bluetooth: BNEP filters: protocol multicast
Jun  5 22:39:27 malamys-laptop kernel: [   29.152076] b43 ssb0:0: firmware: requesting b43/ucode5.fw
Jun  5 22:39:27 malamys-laptop kernel: [   29.182309] b43 ssb0:0: firmware: requesting b43/pcm5.fw
Jun  5 22:39:27 malamys-laptop kernel: [   29.190748] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
Jun  5 22:39:27 malamys-laptop kernel: [   29.196865] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
Jun  5 22:39:27 malamys-laptop kernel: [   29.259129] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x100-0x3af: clean.
Jun  5 22:39:27 malamys-laptop kernel: [   29.260864] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x3e0-0x4ff: excluding 0x4d
0-0x4d7
Jun  5 22:39:27 malamys-laptop kernel: [   29.261597] pcmcia_socket pcmcia_socket0: cs: IO port probe 0x820-0x8ff: clean.
Jun  5 22:39:27 malamys-laptop kernel: [   29.262202] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xc00-0xcf7: clean.
Jun  5 22:39:27 malamys-laptop kernel: [   29.262980] pcmcia_socket pcmcia_socket0: cs: IO port probe 0xa00-0xaff: clean.
Jun  5 22:39:27 malamys-laptop kernel: [   29.435791] apm: BIOS not found.
Jun  5 22:39:27 malamys-laptop kernel: [   29.437416] Bridge firewalling registered
Jun  5 22:39:27 malamys-laptop kernel: [   29.476032] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
Jun  5 22:39:27 malamys-laptop kernel: [   29.520939] ADDRCONF(NETDEV_UP): wlan0: link is not ready
Jun  5 22:39:27 malamys-laptop kernel: [   29.670392] Bluetooth: SCO (Voice Link) ver 0.6
Jun  5 22:39:27 malamys-laptop kernel: [   29.670396] Bluetooth: SCO socket layer initialized

then in dmesg I have a plenty of following:
[  118.012839] ------------[ cut here ]------------
[  118.012854] WARNING: at /build/buildd/linux-2.6.32/net/mac80211/rx.c:2482 ieee80211_rx+0x133/0x160 [mac80211]()
[  118.012857] Hardware name: AMILO PRO V8010                 
[  118.012860] Modules linked in: rfcomm ppdev fbcon tileblit font bitblit softcursor vga16fb vgastate sco bridge stp snd_intel8x0 snd_ac97_codec ac97_bus bnep snd_pcm_oss snd_mixer_oss snd_pcm snd_seq_dummy snd_seq_oss snd_seq_midi arc4 snd_rawmidi snd_seq_midi_event l2cap snd_seq joydev snd_timer snd_seq_device pcmcia b43 mac80211 i915 snd btusb cfg80211 yenta_socket sdhci_pci tifm_7xx1 drm_kms_helper rsrc_nonstatic sdhci intel_agp bluetooth lp tifm_core drm i2c_algo_bit soundcore irda crc_ccitt ssb pcmcia_core led_class psmouse serio_raw agpgart video output snd_page_alloc parport ohci1394 r8169 ieee1394 mii
[  118.012912] Pid: 825, comm: irq/17-b43 Tainted: G        W  2.6.32-41-generic #89-Ubuntu
[  118.012915] Call Trace:
[  118.012920]  [<c014d222>] warn_slowpath_common+0x72/0xa0
[  118.012932]  [<f84d4913>] ? ieee80211_rx+0x133/0x160 [mac80211]
[  118.012944]  [<f84d4913>] ? ieee80211_rx+0x133/0x160 [mac80211]
[  118.012948]  [<c014d26a>] warn_slowpath_null+0x1a/0x20
[  118.012961]  [<f84d4913>] ieee80211_rx+0x133/0x160 [mac80211]
[  118.012972]  [<f8825634>] b43_rx+0x284/0x5f0 [b43]
[  118.012981]  [<f8820040>] ? b43_aphy_op_software_rfkill+0x40/0xb0 [b43]
[  118.012991]  [<f882a5eb>] dma_rx+0x15b/0x360 [b43]
[  118.012995]  [<c0147e9a>] ? __dequeue_rt_entity+0x10a/0x180
[  118.013005]  [<f882a829>] b43_dma_rx+0x39/0x80 [b43]
[  118.013014]  [<f8816548>] b43_do_interrupt_thread+0x268/0x3a0 [b43]
[  118.013018]  [<c058f94b>] ? schedule+0x46b/0x870
[  118.013026]  [<f881669d>] b43_interrupt_thread_handler+0x1d/0x30 [b43]
[  118.013030]  [<c01a25bf>] irq_thread+0x12f/0x200
[  118.013034]  [<c01a2490>] ? irq_thread+0x0/0x200
[  118.013038]  [<c0168754>] kthread+0x74/0x80
[  118.013042]  [<c01686e0>] ? kthread+0x0/0x80
[  118.013046]  [<c0104087>] kernel_thread_helper+0x7/0x10
[  118.013049] ---[ end trace 61ed6b0e2984d347 ]---
