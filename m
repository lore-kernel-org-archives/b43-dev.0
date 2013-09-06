From: Sandro Santilli <strk@keybit.net>
Date: Fri, 6 Sep 2013 22:51:44 +0200
Subject: BCM4301 noise
In-Reply-To: <522A3871.3090103@lwfinger.net>
References: <20130906174847.GA19004@ks356603.kimsufi.com>
 <522A3871.3090103@lwfinger.net>
Message-ID: <20130906205107.GA15678@gnash>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Larry,

On Fri, Sep 06, 2013 at 03:17:53PM -0500, Larry Finger wrote:
> On 09/06/2013 12:48 PM, Sandro Santilli wrote:

> >Sep  5 22:10:31 xtp kernel: [15726.304914] Pid: 13890, comm: irq/17-b43legacy Tainted: P        W  O 3.2.0-4-rt-686-pae #1 Debian 3.2.41-2+deb7u2
> 
> What proprietary module have you loaded that set the "P" tainted flag?

How do I find out ?

Here's lsmod output:

 Module                  Size  Used by
 b43legacy              95436  0
 arc4                   12418  2
 radeon                644973  2
 snd_intel8x0           22340  2
 ttm                    47080  1 radeon
 snd_intel8x0m          17503  0
 mac80211              175536  1 b43legacy
 snd_ac97_codec         84204  2 snd_intel8x0m,snd_intel8x0
 drm_kms_helper         22738  1 radeon
 drm                   150577  4 drm_kms_helper,ttm,radeon
 snd_pcm                53415  3 snd_ac97_codec,snd_intel8x0m,snd_intel8x0
 joydev                 16950  0
 cfg80211              117541  2 mac80211,b43legacy
 i2c_sis96x             12485  0
 snd_page_alloc         12867  3 snd_pcm,snd_intel8x0m,snd_intel8x0
 snd_seq                39514  0
 snd_seq_device         13016  1 snd_seq
 snd_timer              22359  2 snd_seq,snd_pcm
 snd                    42726  11 snd_timer,snd_seq_device,snd_seq,snd_pcm,snd_ac97_codec,snd_intel8x0m,snd_intel8x0
 i2c_algo_bit           12713  1 radeon
 rng_core               12580  1 b43legacy
 i2c_core               19116  5 i2c_algo_bit,i2c_sis96x,drm,drm_kms_helper,radeon
 soundcore              12921  1 snd
 yenta_socket           22402  0
 pcmcia_rsrc            17380  1 yenta_socket
 battery                12986  0
 ac                     12552  0
 asus_laptop            18060  0
 ac97_bus               12462  1 snd_ac97_codec
 sparse_keymap          12680  1 asus_laptop
 shpchp                 26717  0
 rfkill                 18484  3 asus_laptop,cfg80211
 pcspkr                 12515  0
 psmouse                59575  0
 evdev                  17165  7
 power_supply           13283  3 ac,battery,radeon
 serio_raw              12769  0
 input_polldev          12802  1 asus_laptop
 processor              27565  1
 button                 12817  0
 ext3                  142547  2
 mbcache                12938  1 ext3
 jbd                    51408  1 ext3
 sg                     21445  0
 sd_mod                 35425  3
 sr_mod                 17468  0
 crc_t10dif             12332  1 sd_mod
 cdrom                  34813  1 sr_mod
 ata_generic            12439  0
 cb710_mmc              13097  0
 thermal                13103  0
 floppy                 48132  0
 fan                    12594  0
 thermal_sys            17752  3 fan,thermal,processor
 ssb                    43266  1 b43legacy
 pata_sis               13123  2
 mmc_core               62021  2 ssb,cb710_mmc
 pcmcia                 32047  1 ssb
 ohci_hcd               22027  0
 ehci_hcd               35477  0
 pcmcia_core            17942  3 pcmcia,pcmcia_rsrc,yenta_socket
 libata                125019  2 pata_sis,ata_generic
 firewire_ohci          30847  0
 usbcore               108505  3 ehci_hcd,ohci_hcd
 skge                   40003  0
 scsi_mod              135111  4 libata,sr_mod,sd_mod,sg
 cb710                  12856  1 cb710_mmc
 firewire_core          38725  1 firewire_ohci
 usb_common             12338  1 usbcore
 crc_itu_t              12331  1 firewire_core

> Please repeat the WARNING without ever loading that module, and
> without the "P" flag ever being set.

How ?

> The WARNING is logged because interrupts are enabled at that point,
> and they should be disabled.

--strk;
