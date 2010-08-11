From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= <kevyn.alexandre.pare@gmail.com>
Date: Wed, 11 Aug 2010 08:41:43 -0400
Subject: My test for bcm4213
In-Reply-To: <4C426E43.6070706@lwfinger.net>
References: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>
	<AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>
	<4C420119.4090109@lwfinger.net>
	<AANLkTimFQFfmMlxKpmRUv8ZR_fDoZr7Ld84jOrIE1oVZ@mail.gmail.com>
	<4C426E43.6070706@lwfinger.net>
Message-ID: <AANLkTimx_b0d0mAYTaC-4ggUBcDOSzrWYUn+=FfLskFc@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

I was with 2.6.35-rc5 and it was working at home. I arrived at hotel
for LinuxCon and I was unable to connect. I plug usb Linksys and it
work perfectly and was really fast to found network and connect to it
(Cisco-Linksys Compact wiless G adapter):

Bus 002 Device 002: ID 13b1:0020 Linksys WUSB54GC 802.11g Adapter [ralink rt73]
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass            0 (Defined at Interface level)
  bDeviceSubClass         0
  bDeviceProtocol         0
  bMaxPacketSize0        64
  idVendor           0x13b1 Linksys
  idProduct          0x0020 WUSB54GC 802.11g Adapter [ralink rt73]
  bcdDevice            0.01
  iManufacturer           1
  iProduct                2
  iSerial                 0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength           32
    bNumInterfaces          1
    bConfigurationValue     1
    iConfiguration          0
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              300mA
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           2
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol    255 Vendor Specific Protocol
      iInterface              0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x01  EP 1 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               0
can't get device qualifier: Operation not permitted
can't get debug descriptor: Operation not permitted
cannot read device status, Operation not permitted (1)





Then I try to recompile 2.6.35+ and the b43 was not working and when I
connect my USB wireless it freeze the PC? The only output I had his
this and if you want me to do something else, ask:


dmesg
...
[   15.225887] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   15.330255] b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
[   15.330273] b43-phy0 debug: Found Radio: Manuf 0x17F, Version
0x2062, Revision 2
[   15.584409] phy0: Selected rate control algorithm 'minstrel_ht'
[   15.585071] Registered led device: b43-phy0::tx
[   15.585093] Registered led device: b43-phy0::rx
[   15.585117] Registered led device: b43-phy0::radio
[   15.585196] Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
[   15.756287] fb0: inteldrmfb frame buffer device
[   15.756291] drm: registered panic notifier
[   15.782863] acpi device:07: registered as cooling_device2
[   15.783444] input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:01/input/input9
[   15.783569] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[   15.783667] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[   16.123922] Console: switching to colour frame buffer device 160x50
[   18.220282] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[   18.222700] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[   20.302332] ppdev: user-space parallel port driver
[   31.970401] b43-phy0 debug: Chip initialized
[   31.970583] b43-phy0 debug: 64-bit DMA initialized
[   31.970682] b43-phy0 debug: QoS enabled
[   32.011229] b43-phy0 debug: Wireless interface started
[   32.030537] b43-phy0 debug: Adding Interface type 2
[   32.031372] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   32.034252] r8169 0000:07:00.0: eth0: link down
[   32.034601] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   43.030409] wlan0: deauthenticating from 04:4f:aa:2a:6e:79 by local
choice (reason=3)
[   43.031054] wlan0: authenticate with 04:4f:aa:27:7b:c9 (try 1)
[   43.037513] wlan0: authenticated
[   43.037765] wlan0: associate with 04:4f:aa:27:7b:c9 (try 1)
[   43.041049] wlan0: RX AssocResp from 04:4f:aa:27:7b:c9 (capab=0x421
status=0 aid=2)
[   43.041054] wlan0: associated
[   43.042374] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   51.031711] b43-phy0 ERROR: Fatal DMA error: 0x00000800,
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[   51.031723] b43-phy0 ERROR: This device does not support DMA on
your system. It will now be switched to PIO.
[   51.031728] b43-phy0: Controller RESET (DMA error) ...
[   51.053162] b43-phy0 debug: Wireless interface stopped
[   51.053172] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed
frames 0/0 = 0.0%, Average tries 0.00
[   51.053221] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256,
Failed frames 0/0 = 0.0%, Average tries 0.00
[   51.080102] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 2/256,
Failed frames 0/21 = 0.0%, Average tries 1.00
[   51.102334] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256,
Failed frames 0/0 = 0.0%, Average tries 0.00
[   51.120125] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 4/256,
Failed frames 1/30 = 3.3%, Average tries 1.10
[   51.140124] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256,
Failed frames 0/0 = 0.0%, Average tries 0.00
[   51.400278] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[   51.402680] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[   53.160115] wlan0: no IPv6 routers present
[   65.120324] b43-phy0 debug: Chip initialized
[   65.120432] b43-phy0 debug: PIO initialized
[   65.120536] b43-phy0 debug: QoS enabled
[   65.161143] b43-phy0 debug: Wireless interface started
[   65.161149] b43-phy0: Controller restarted
[   65.195954] b43-phy0 ERROR: PHY transmission error
[   65.209042] b43-phy0 ERROR: PHY transmission error
[   65.224824] b43-phy0 ERROR: PHY transmission error
[   65.343417] b43-phy0 ERROR: PHY transmission error
[   67.630942] wlan0: deauthenticating from 04:4f:aa:27:7b:c9 by local
choice (reason=3)
[   67.670411] cfg80211: All devices are disconnected, going to
restore regulatory settings
[   67.670415] cfg80211: Restoring regulatory settings
[   67.670419] cfg80211: Calling CRDA to update world regulatory domain
[   67.672335] cfg80211: World regulatory domain updated:
[   67.672338]     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[   67.672342]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   67.672345]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   67.672348]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   67.672351]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   67.672353]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   67.700430] wlan0: deauthenticating from 04:4f:aa:27:7b:c9 by local
choice (reason=3)
[   67.700828] wlan0: authenticate with 04:4f:aa:2a:6e:19 (try 1)
[   67.707243] wlan0: authenticated
[   67.707488] wlan0: associate with 04:4f:aa:2a:6e:19 (try 1)
[   67.712675] wlan0: RX AssocResp from 04:4f:aa:2a:6e:19 (capab=0x421
status=0 aid=4)
[   67.712680] wlan0: associated
[   68.883520] b43-phy0 ERROR: PHY transmission error
[   68.976331] b43-phy0 ERROR: PHY transmission error
[   69.088310] b43-phy0 ERROR: PHY transmission error
[   69.088964] b43-phy0 ERROR: PHY transmission error
[   69.089905] b43-phy0 ERROR: PHY transmission error
[   70.512429] net_ratelimit: 60 callbacks suppressed
[   70.512435] b43-phy0 ERROR: PHY transmission error
[   70.513507] b43-phy0 ERROR: PHY transmission error
[   70.514593] b43-phy0 ERROR: PHY transmission error
[   70.517549] b43-phy0 ERROR: PHY transmission error
[   70.518724] b43-phy0 ERROR: PHY transmission error
[   70.528037] b43-phy0 ERROR: PHY transmission error
[   70.536531] b43-phy0 ERROR: PHY transmission error
[   70.539130] b43-phy0 ERROR: PHY transmission error
[   70.539744] b43-phy0 ERROR: PHY transmission error
[   70.541106] b43-phy0 ERROR: PHY transmission error
[   72.510056] No probe response from AP 04:4f:aa:2a:6e:19 after
500ms, disconnecting.
[   72.540651] cfg80211: All devices are disconnected, going to
restore regulatory settings
[   72.540656] cfg80211: Restoring regulatory settings
[   72.540660] cfg80211: Calling CRDA to update world regulatory domain
[   72.542607] cfg80211: World regulatory domain updated:
[   72.542610]     (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[   72.542613]     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   72.542616]     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   72.542619]     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[   72.542622]     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   72.542625]     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[   74.080928] wlan0: authenticate with 04:4f:aa:2a:6e:19 (try 1)
[   74.280082] wlan0: authenticate with 04:4f:aa:2a:6e:19 (try 2)
[   74.480078] wlan0: authenticate with 04:4f:aa:2a:6e:19 (try 3)
[   74.680049] wlan0: authentication with 04:4f:aa:2a:6e:19 timed out
[   75.646581] net_ratelimit: 346 callbacks suppressed
[   75.646587] b43-phy0 ERROR: PHY transmission error
[   75.649859] b43-phy0 ERROR: PHY transmission error
[   75.670281] b43-phy0 ERROR: PHY transmission error
[   75.670843] b43-phy0 ERROR: PHY transmission error
[   75.671426] b43-phy0 ERROR: PHY transmission error
[   75.672155] b43-phy0 ERROR: PHY transmission error
[   75.805681] b43-phy0 ERROR: PHY transmission error
[   75.808564] b43-phy0 ERROR: PHY transmission error
[   75.810000] b43-phy0 ERROR: PHY transmission error
[   75.814573] b43-phy0 ERROR: PHY transmission error
[   84.252492] net_ratelimit: 42 callbacks suppressed
[   84.252497] b43-phy0 ERROR: PHY transmission error
[   84.253752] b43-phy0 ERROR: PHY transmission error
[   84.255315] b43-phy0 ERROR: PHY transmission error
[   84.257082] b43-phy0 ERROR: PHY transmission error
[   84.258380] b43-phy0 ERROR: PHY transmission error
[   84.259736] b43-phy0 ERROR: PHY transmission error
[   84.261257] b43-phy0 ERROR: PHY transmission error
[   84.262880] b43-phy0 ERROR: PHY transmission error
[   84.264482] b43-phy0 ERROR: PHY transmission error
[   84.267184] b43-phy0 ERROR: PHY transmission error
[   90.683848] net_ratelimit: 129 callbacks suppressed
[   90.683854] b43-phy0 ERROR: PHY transmission error
[   90.685582] b43-phy0 ERROR: PHY transmission error
[   90.686543] b43-phy0 ERROR: PHY transmission error
[   90.687813] b43-phy0 ERROR: PHY transmission error
[   90.689461] b43-phy0 ERROR: PHY transmission error
[   90.692085] b43-phy0 ERROR: PHY transmission error
[   90.693765] b43-phy0 ERROR: PHY transmission error
[   90.695533] b43-phy0 ERROR: PHY transmission error
[   90.697097] b43-phy0 ERROR: PHY transmission error
[   90.698646] b43-phy0 ERROR: PHY transmission error
[   97.112312] net_ratelimit: 87 callbacks suppressed
[   97.112316] b43-phy0 ERROR: PHY transmission error
[   97.113576] b43-phy0 ERROR: PHY transmission error
[   97.114853] b43-phy0 ERROR: PHY transmission error
[   97.116597] b43-phy0 ERROR: PHY transmission error
[   97.118353] b43-phy0 ERROR: PHY transmission error
[   97.120639] b43-phy0 ERROR: PHY transmission error
[   97.121623] b43-phy0 ERROR: PHY transmission error
[   97.123379] b43-phy0 ERROR: PHY transmission error
[   97.125138] b43-phy0 ERROR: PHY transmission error
[   97.126934] b43-phy0 ERROR: PHY transmission error
[  103.552820] net_ratelimit: 97 callbacks suppressed
[  103.552828] b43-phy0 ERROR: PHY transmission error
[  103.554597] b43-phy0 ERROR: PHY transmission error
[  103.556366] b43-phy0 ERROR: PHY transmission error
[  103.559104] b43-phy0 ERROR: PHY transmission error
[  103.560090] b43-phy0 ERROR: PHY transmission error
[  103.561272] b43-phy0 ERROR: PHY transmission error
[  103.566039] b43-phy0 ERROR: PHY transmission error
[  103.567088] b43-phy0 ERROR: PHY transmission error
[  103.568929] b43-phy0 ERROR: PHY transmission error
[  103.570423] b43-phy0 ERROR: PHY transmission error
vostro at vostro:~$ modinfo b43
filename:       /lib/modules/2.6.35+/kernel/drivers/net/wireless/b43/b43.ko
firmware:       b43/ucode9.fw
firmware:       b43/ucode5.fw
firmware:       b43/ucode15.fw
firmware:       b43/ucode14.fw
firmware:       b43/ucode13.fw
firmware:       b43/ucode11.fw
firmware:       FW13
license:        GPL
author:         G?bor Stefanik
author:         Michael Buesch
author:         Stefano Brivio
author:         Martin Langer
description:    Broadcom B43 wireless driver
srcversion:     AF3126A03F2CDAAC60C5452
alias:          ssb:v4243id0812rev10*
alias:          ssb:v4243id0812rev0F*
alias:          ssb:v4243id0812rev0D*
alias:          ssb:v4243id0812rev0C*
alias:          ssb:v4243id0812rev0B*
alias:          ssb:v4243id0812rev0A*
alias:          ssb:v4243id0812rev09*
alias:          ssb:v4243id0812rev07*
alias:          ssb:v4243id0812rev06*
alias:          ssb:v4243id0812rev05*
depends:        ssb,mac80211,led-class,cfg80211
vermagic:       2.6.35+ SMP mod_unload modversions
parm:           bad_frames_preempt:enable(1) / disable(0) Bad Frames
Preemption (int)
parm:           fwpostfix:Postfix for the .fw files to load. (string)
parm:           hwpctl:Enable hardware-side power control (default off) (int)
parm:           nohwcrypt:Disable hardware encryption. (int)
parm:           hwtkip:Enable hardware tkip. (int)
parm:           qos:Enable QOS support (default on) (int)
parm:           btcoex:Enable Bluetooth coexistence (default on) (int)
parm:           verbose:Log message verbosity: 0=error, 1=warn,
2=info(default), 3=debug (int)
parm:           pio:Use PIO accesses by default: 0=DMA, 1=PIO (int)
vostro at vostro:~$ uname -a
Linux vostro 2.6.35+ #3 SMP Tue Aug 10 11:40:11 EDT 2010 x86_64 GNU/Linux
vostro at vostro:~$ lspci -vnn | grep 14e4
06:00.0 Network controller [0280]: Broadcom Corporation BCM4312
802.11b/g [14e4:4315] (rev 01)


On Sat, Jul 17, 2010 at 11:00 PM, Larry Finger
<Larry.Finger@lwfinger.net> wrote:
> On 07/17/2010 09:09 PM, Kevyn-Alexandre Par? wrote:
>>
>> Next time will post with attachment .txt or directly in the email.
>
> Thank you.
>
>> I was just reporting that it was working properly except the ?sudo
>> apt-get install b43-fwcutter didn't work. Because it was installing
>> the wrong version& ?I explain how I did it (just installing for src).
>
> There is no wrong version for fwcutter. I did not see what was wrong other
> than you did not have firmware installed.
>
>> I also check the archive and knew about the DMA error sorry for not
>> been clear enough....
>>
>> I'm on:
>> uname -a
>> Linux vostro 2.6.35-rc5+ #2 SMP Thu Jul 15 14:05:34 EDT 2010 x86_64
>> GNU/Linux
>>
>> It's working fine.
>
> Some boxes recover from the DMA error and switch to PIO mode without
> trouble. Others do not and need the options that I listed.
>
>> Do you still have things to do on it if so what and where is your todo
>> list?! I imagnie that b43 no because I'm looking at the
>> http://linuxwireless.org/en/users/Drivers ? ? and all is set to yes...
>
> We do not have a formal todo list. Informally, we need to fix the DMA
> problem, which is likely to be a PCIe setup problem. We also need to
> complete the code for the N-PHY devices. We also need to do the reverse
> engineering and coding for the SSLPN-PHY units.
>
> Larry
>
