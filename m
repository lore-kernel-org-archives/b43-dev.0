From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 06 Sep 2013 15:17:53 -0500
Subject: BCM4301 noise
In-Reply-To: <20130906174847.GA19004@ks356603.kimsufi.com>
References: <20130906174847.GA19004@ks356603.kimsufi.com>
Message-ID: <522A3871.3090103@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/06/2013 12:48 PM, Sandro Santilli wrote:
> Hello all, I've a BCM4301 network controller (Asus L5800C laptop)
> and trying to use b43legacy module to use it on a 3.2.0-4-rt-686-pae
> linux kernel.
>
> The controller works, but makes lots of noise in syslog.
> Here's an excerpt:
>
> Sep  5 22:10:30 xtp kernel: [15725.713822] b43legacy-phy3: Broadcom 4301 WLAN found (core revision 2)
> Sep  5 22:10:31 xtp kernel: [15725.765245] Broadcom 43xx-legacy driver loaded [ Features: PLID ]
> Sep  5 22:10:31 xtp kernel: [15725.957371] b43legacy ssb0:0: firmware: agent loaded b43legacy/ucode2.fw into memory
> Sep  5 22:10:31 xtp kernel: [15725.965476] b43legacy ssb0:0: firmware: agent loaded b43legacy/pcm4.fw into memory
> Sep  5 22:10:31 xtp kernel: [15725.973486] b43legacy ssb0:0: firmware: agent loaded b43legacy/b0g0initvals2.fw into memory
> Sep  5 22:10:31 xtp kernel: [15726.072149] b43legacy-phy3: Loading firmware version 0x127, patch level 14 (2005-04-18 02:36:27)
> Sep  5 22:10:31 xtp kernel: [15726.140239] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> Sep  5 22:10:31 xtp kernel: [15726.304797] ------------[ cut here ]------------
> Sep  5 22:10:31 xtp kernel: [15726.304817] WARNING: at /build/linux-ppSMWv/linux-3.2.46/debian/build/source_rt/drivers/net/wireless/b43legacy/debugfs.c:485 b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]()
> Sep  5 22:10:31 xtp kernel: [15726.304822] Hardware name: L5C
> Sep  5 22:10:31 xtp kernel: [15726.304825] Modules linked in: b43legacy bcma fuse crc32c libcrc32c zlib_deflate ufs qnx4 hfsplus hfs minix ntfs vfat msdos fat jfs xfs reiserfs ext4 crc16 jbd2 ext2 dm_mod joydev snd_intel8x0m radeon snd_intel8x0 snd_ac97_codec snd_pcm ttm arc4 snd_page_alloc snd_timer psmouse drm_kms_helper snd drm mac80211 asus_laptop cfg80211 sparse_keymap rfkill soundcore i2c_algo_bit ac97_bus pcspkr input_polldev serio_raw rng_core battery processor button ac yenta_socket evdev i2c_sis96x power_supply i2c_core shpchp pcmcia_rsrc ext3 mbcache jbd sg sr_mod sd_mod cdrom crc_t10dif ata_generic cb710_mmc floppy fan thermal pata_sis ssb thermal_sys ohci_hcd mmc_core libata pcmcia skge ehci_hcd firewire_ohci pcmcia_core cb710 scsi_mod usbcore usb_common firewire_core crc_itu_t [last unloaded: b43legacy]
> Sep  5 22:10:31 xtp kernel: [15726.304914] Pid: 13890, comm: irq/17-b43legacy Tainted: P        W  O 3.2.0-4-rt-686-pae #1 Debian 3.2.41-2+deb7u2

What proprietary module have you loaded that set the "P" tainted flag?

Please repeat the WARNING without ever loading that module, and without the "P" 
flag ever being set.

The WARNING is logged because interrupts are enabled at that point, and they 
should be disabled.

Larry
