From: Rod Manning <rod.t.manning@gmail.com>
Date: Fri, 13 May 2016 23:13:51 +0930
Subject: Broadcom BCM43162 [14e4:43ae] Support
In-Reply-To: <1BA.2TDT.2JBpGL4MFRD.1NDNUc@seznam.cz>
References: <1463115008.17952.11.camel@gmail.com>
 <1BA.2TDT.2JBpGL4MFRD.1NDNUc@seznam.cz>
Message-ID: <CADW8vZJFgb0zTd44oueaQoVH416Axk0Xt-=fOt5crt1qmixgdw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Thanks Jan.

Results for my card/setup are identical to your own; can load the
driver, but firmware doesn't get loaded (no wlan0 device). Will
monitor your thread and see if I can be of any help for testing.

--
Cheers,

Rod

With bcma module loaded:
--------------------------------------------------------------------
inux-y7tt:/ # dmesg | grep bcm
[ 95.788134] Modules linked in: af_packet b43legacy b43 bcma mac80211
cfg80211 ssb pcmcia pcmcia_core nf_log_ipv6 xt_pkttype nf_log_ipv4
nf_log_common xt_LOG xt_limit bnep nls_iso8859_1 nls_cp437 vfat fat
rtsx_usb_ms memstick uvcvideo videobuf2_vmalloc videobuf2_memops
videobuf2_v4l2 videobuf2_core videodev btusb btrtl btbcm btintel
bluetooth ip6t_REJECT nf_reject_ipv6 xt_tcpudp nf_conntrack_ipv6
nf_defrag_ipv6 snd_hda_codec_realtek snd_hda_codec_hdmi
snd_hda_codec_generic snd_hda_intel snd_hda_codec snd_hda_core
snd_hwdep snd_pcm snd_timer thinkpad_acpi ip6table_raw msr r8169 snd
kvm irqbypass ipt_REJECT soundcore mii sp5100_tco nf_reject_ipv4
crct10dif_pclmul k10temp fam15h_power shpchp ideapad_laptop
crc32_pclmul i2c_piix4 edac_mce_amd acpi_cpufreq edac_core
sparse_keymap joydev crc32c_intel 8250_fintek
[ 834.012145] bcma: bus0: Found chip with id 0x4335, rev 0x02 and package 0x01
[ 834.012192] bcma: bus0: Core 0 found: ChipCommon (manuf 0x4BF, id
0x800, rev 0x2E, class 0x0)
[ 834.012214] bcma: bus0: Core 1 found: IEEE 802.11 (manuf 0x4BF, id
0x812, rev 0x2E, class 0x0)
[ 834.012250] bcma: bus0: Core 2 found: ARM CR4 (manuf 0x4BF, id
0x83E, rev 0x04, class 0x0)
[ 834.012283] bcma: bus0: Core 3 found: PCIe Gen2 (manuf 0x4BF, id
0x83C, rev 0x04, class 0x0)
[ 834.012303] bcma: bus0: Core 4 found: USB 2.0 Device (manuf 0x4BF,
id 0x81A, rev 0x14, class 0x0)
[ 834.012323] bcma: bus0: Core 5 found: SDIO Device (manuf 0x4BF, id
0x829, rev 0x15, class 0x0)
[ 834.012355] bcma: bus0: Bridge found
[ 834.012565] bcma-pci-bridge: probe of 0000:03:00.0 failed with error -84

With brcmfmac module loaded:
--------------------------------------------------------------------------------
linux-y7tt:/ # dmesg | grep brcm
[ 20.161148] bluetooth hci0: Direct firmware load for brcm/BCM.hcd
failed with error -2
[ 20.161166] Bluetooth: hci0: BCM: Patch brcm/BCM.hcd not found
[ 227.836820] usbcore: registered new interface driver brcmfmac


On Fri, May 13, 2016 at 4:13 PM Jan Sobotka <xSobotkaJ@seznam.cz> wrote:

Hi Rod,


I posted same question recently. Please refer to this thread
http://lists.infradead.org/pipermail/b43-dev/2016-May/thread.html#3942


Jan


---------- P?vodn? zpr?va ----------
Od: Rod Manning
Komu: b43-dev at lists.infradead.org
Datum: 13. 5. 2016 7:15:42
P?edm?t: Broadcom BCM43162 [14e4:43ae] Support

Hi,

Wondering if anyone can provide information on plans to support the
Broadcom BCM43162 adapter in the b43 kernel drivers?

Have tried other options with ndiswrapper etc. to no success. Wondering
whether to keep trying to get a solution/wait for driver vs just
replace the card...

(Happy to provide testing etc. if it helps out.)

--
Thanks for any info,

Rod

lspci output:
-----------------------------------------------------------------
03:00.0 Network controller [0280]: Broadcom Corporation BCM43162 802.11ac
Wireless Network Adapter [14e4:43ae] (rev 02)
Subsystem: Lenovo Device [17aa:0622]
Flags: bus master, fast devsel, latency 0, IRQ 255
Memory at f0c00000 (64-bit, non-prefetchable) [size=32K]
Memory at f0800000 (64-bit, non-prefetchable) [size=4M]
Capabilities: [48] Power Management version 3
Capabilities: [58] MSI: Enable- Count=1/1 Maskable- 64bit+
Capabilities: [68] Vendor Specific Information: Len=44
Capabilities: [ac] Express Endpoint, MSI 00
Capabilities: [100] Advanced Error Reporting
Capabilities: [13c] Device Serial Number 00-00-08-ff-ff-00-30-0e
Capabilities: [150] Power Budgeting
Capabilities: [160] Virtual Channel
Capabilities: [1b0] Latency Tolerance Reporting
Capabilities: [220] #15

_______________________________________________
b43-dev mailing list
b43-dev at lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
