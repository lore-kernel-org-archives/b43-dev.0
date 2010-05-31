From: Fabrizio Regalli <fabreg@gmail.com>
Date: Mon, 31 May 2010 23:45:25 +0200
Subject: Problem with b43
Message-ID: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I have a problem with b43 driver.
Here's some information of my system (debian sid)

# dmesg |grep b43
[    2.046367] b43-pci-bridge 0000:04:05.0: PCI INT A -> GSI 17 (level, low)
-> IRQ 17
[    7.860803] b43-phy0: Broadcom 4318 WLAN found (core revision 9)
[    8.039770] Registered led device: b43-phy0::tx
[    8.039784] Registered led device: b43-phy0::rx
[    8.039797] Registered led device: b43-phy0::assoc
[    8.039810] Registered led device: b43-phy0::radio
[   10.672291] b43 ssb0:0: firmware: requesting b43/ucode5.fw
[   10.710304] b43 ssb0:0: firmware: requesting b43/pcm5.fw
[   10.713597] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
[   10.730028] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
[   10.852266] b43-phy0: Loading firmware version 478.104 (2008-07-01
00:50:23)


# uname -a
Linux debiancasa 2.6.34 #1 SMP PREEMPT Mon May 24 22:41:39 CEST 2010 i686
GNU/Linux


# lspci -vvn|grep 43 -A7
04:05.0 0280: 14e4:4318 (rev 02)
    Subsystem: 1043:100f
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR+ FastB2B- DisINTx-
    Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
    Latency: 64
    Interrupt: pin A routed to IRQ 17
    Region 0: Memory@f79f6000 (32-bit, non-prefetchable) [size=8K]
    Kernel driver in use: b43-pci-bridge

04:0a.0 0c00: 104c:8023 (prog-if 10 [OHCI])
    Subsystem: 1028:0215
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR+ FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 64 (500ns min, 1000ns max), Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 18

# lsmod |grep b43
b43                    97693  0
mac80211              110180  1 b43
cfg80211               95149  2 b43,mac80211
led_class               1575  1 b43


When I bring up the interface (ifup wlan0)

[12246.900516] b43-phy0: Loading firmware version 478.104 (2008-07-01
00:50:23)
[12246.988328] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[12416.648176] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
[12416.848040] wlan0: authenticate with 00:18:4d:2e:85:4a (try 2)
[12417.048048] wlan0: authenticate with 00:18:4d:2e:85:4a (try 3)
[12417.248026] wlan0: authentication with 00:18:4d:2e:85:4a timed out
[12463.932235] wlan0: direct probe to 00:18:4d:2e:85:4a (try 1)
[12464.132034] wlan0: direct probe to 00:18:4d:2e:85:4a (try 2)
[12464.332034] wlan0: direct probe to 00:18:4d:2e:85:4a (try 3)
[12464.532023] wlan0: direct probe to 00:18:4d:2e:85:4a timed out
[12517.684235] wlan0: direct probe to 00:18:4d:2e:85:4a (try 1)
[12517.884034] wlan0: direct probe to 00:18:4d:2e:85:4a (try 2)
[12518.084530] wlan0: direct probe to 00:18:4d:2e:85:4a (try 3)
[12518.284034] wlan0: direct probe to 00:18:4d:2e:85:4a timed out

..and I can't connect to my access point..
My /etc/network/interfaces:

....

# wireless
auto wlan0
iface wlan0 inet static
        #wireless-mode managed
        wpa-driver wext
        wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
        # static ip settings
        address 192.168.0.100
        netmask 255.255.255.0
        #network 192.168.0.0
        #broadcast 192.168.0.255
        gateway 192.168.0.1

Could someone plese give me a suggest ?

Thanks a lot.
Fabrizio
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100531/2c7c9f72/attachment.htm>
