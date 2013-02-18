From: Thomas D. Dean <tomdean@speakeasy.org>
Date: Mon, 18 Feb 2013 11:58:55 -0800
Subject: Debian 6 b43 not working
In-Reply-To: <512285A3.40209@speakeasy.org>
References: <512285A3.40209@speakeasy.org>
Message-ID: <512287FF.1080303@speakeasy.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/18/13 11:48, Thomas D. Dean wrote:
> I have a HP ZD7000 laptop with a BCM4306.  I see no errors, but, nothing
> seems to happen when I try to bring wlan0 up.
>

Some additional information:  What does the line
Feb 18 11:56:40 zd7000 kernel: [82985.817765] Pid: 22091, \
    comm: irq/21-b43 Tainted:
mean?

Tom Dean

 > from /var/log/messages

Feb 18 11:55:17 zd7000 kernel: [82903.201403] ---[ end trace 
33198fc3419570d3 ]---
Feb 18 11:55:17 zd7000 kernel: [82903.340305] ------------[ cut here 
]------------
Feb 18 11:55:17 zd7000 kernel: [82903.340317] WARNING: at 
/build/buildd-linux-2.6_2.6.32-46-i386-7ZiQaK/linux-2.6-2.6.32/debian/build/source_i386_none/net/mac80211/rx.c:2482 
ieee80211_rx+0xdc/0x577 [mac80211]()
Feb 18 11:55:17 zd7000 kernel: [82903.340321] Hardware name: Pavilion 
zd7000 (DS487U#ABA)
Feb 18 11:55:17 zd7000 kernel: [82903.340323] Modules linked in: b43 ssb 
pcmcia rng_core mac80211 cfg80211 led_class nls_utf8 nls_cp437 vfat fat 
speedstep_lib cpufreq_userspace cpufreq_powersave cpufreq_conservative 
cpufreq_stats sco bridge stp rfcomm bnep l2cap crc16 bluetooth ppdev lp 
binfmt_misc uinput fuse loop firewire_sbp2 snd_intel8x0m snd_intel8x0 
snd_ac97_codec ac97_bus yenta_socket nouveau ttm drm_kms_helper snd_pcm 
snd_seq rsrc_nonstatic drm snd_timer arc4 snd_seq_device ecb 
i2c_algo_bit snd rfkill soundcore shpchp joydev snd_page_alloc irda 
pci_hotplug i2c_i801 i2c_core crc_ccitt video parport_pc psmouse parport 
output pcspkr evdev container button battery ac wmi serio_raw processor 
ext3 jbd mbcache usbhid hid usb_storage sg sd_mod crc_t10dif sr_mod 
cdrom ata_generic uhci_hcd cb710_mmc ata_piix firewire_ohci thermal 
mmc_core 8139too libata thermal_sys firewire_core crc_itu_t cb710 8139cp 
mii pcmcia_core ehci_hcd usbcore nls_base scsi_mod [last unloaded: 
led_class]
Feb 18 11:55:17 zd7000 kernel: [82903.340428] Pid: 22091, comm: 
irq/21-b43 Tainted: G        W  2.6.32-5-686 #1
Feb 18 11:55:17 zd7000 kernel: [82903.340430] Call Trace:
Feb 18 11:55:17 zd7000 kernel: [82903.340439]  [<c1030949>] ? 
warn_slowpath_common+0x5e/0x8a
Feb 18 11:55:17 zd7000 kernel: [82903.340443]  [<c103097f>] ? 
warn_slowpath_null+0xa/0xc
Feb 18 11:55:17 zd7000 kernel: [82903.340452]  [<e37bd7b1>] ? 
ieee80211_rx+0xdc/0x577 [mac80211]
Feb 18 11:55:17 zd7000 kernel: [82903.340461]  [<e383490e>] ? 
b43_rx+0x42f/0x456 [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340468]  [<e3830080>] ? 
b43_radio_init2060+0x160/0x1ea [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340475]  [<e38386e6>] ? 
op32_fill_descriptor+0x2a/0x8b [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340483]  [<e38380a5>] ? 
b43_dma_rx+0x212/0x282 [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340490]  [<e3829d22>] ? 
b43_do_interrupt_thread+0x3fa/0x4cb [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340497]  [<e3829e08>] ? 
b43_interrupt_thread_handler+0x15/0x27 [b43]
Feb 18 11:55:17 zd7000 kernel: [82903.340502]  [<c106cf32>] ? 
irq_thread+0xbc/0x1b4
Feb 18 11:55:17 zd7000 kernel: [82903.340506]  [<c106ce76>] ? 
irq_thread+0x0/0x1b4
Feb 18 11:55:17 zd7000 kernel: [82903.340511]  [<c10440fc>] ? 
kthread+0x61/0x66
Feb 18 11:55:17 zd7000 kernel: [82903.340515]  [<c104409b>] ? 
kthread+0x0/0x66
Feb 18 11:55:17 zd7000 kernel: [82903.340521]  [<c1003d47>] ? 
kernel_thread_helper+0x7/0x10
Feb 18 11:55:17 zd7000 kernel: [82903.340524] ---[ end trace 
33198fc3419570d4 ]-
