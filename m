From: =?utf-8?Q?S=C3=A9bastien?= Brice <sebastien.brice@jvs.fr>
Date: Mon, 18 Apr 2016 14:39:51 +0200 (CEST)
Subject: Broadcom Corporation BCM4331 (apple card)
Message-ID: <2070341265.3504465.1460983191663.JavaMail.zimbra@jvs.fr>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi guys i am experimenting issues with b43 driver on my macbook pro running fedora 19

My wifi hardware is Broadcom Corporation BCM4331 802.11a/b/g/n (rev 02)	Subsystem: Apple Inc. AirPort Extreme

I can associate any hotspot i want and the network is working good for some minutes. Then wireless card begins to discard packet and the network become unusable. 

I did follow this link http://linuxwireless.org/en/users/Drivers/b43/#Fedora to get b43-fwcutter and i grabbed proprietary broadcom driver for newer kernel.

Unfortunately i have no log, since dmesg does not report something anormal but i can assure you the network does not work more than a few minutes.

Could you give me a hand to get my hardware working ? thanks you so much



uname -a

Linux localhost.localdomain 3.19.8-100.fc20.x86_64

# lspci -vvn|grep 43 -A7
02:00.0 0280: 14e4:4331 (rev 02)
	Subsystem: 106b:00f5
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3

# lsmod |grep b43
b43                   422414  0 
mac80211              683564  1 b43
cfg80211              525235  2 b43,mac80211
ssb                    70821  1 b43
mmc_core              125943  4 b43,ssb,sdhci,sdhci_pci
bcma                   50785  1 b43

iwconfig
wlp2s0b1  IEEE 802.11bg  ESSID:"XXXXX_Hotspot"  
          Mode:Managed  Frequency:2.412 GHz  Access Point: C0:8A:DE:7C:EA:68   
          Bit Rate=11 Mb/s   Tx-Power=20 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:off
          Link Quality=49/70  Signal level=-61 dBm  
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:10   Missed beacon:0

wlp2s0b1  Scan completed :
          Cell 01 - Address: C0:8A:DE:7C:EA:68
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=49/70  Signal level=-61 dBm  
                    Encryption key:off
                    ESSID:"CESI_Hotspot"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=000000052291bdbb
                    Extra: Last beacon: 78ms ago
                    IE: Unknown: 000C434553495F486F7473706F74
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030101
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3401001300000000000000000000000000000000000000
                    IE: Unknown: 3D1601001300000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD180050F20201018C0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD080013920100018525
          Cell 02 - Address: C0:8A:DE:3C:EA:68
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=54/70  Signal level=-56 dBm  
                    Encryption key:off
                    ESSID:"CESI_Corp"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=0000000521ebb52b
                    Extra: Last beacon: 182ms ago
                    IE: Unknown: 0009434553495F436F7270
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030101
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3401001300000000000000000000000000000000000000
                    IE: Unknown: 3D1601001300000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD180050F20201018C0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD080013920100018525
          Cell 03 - Address: C0:8A:DE:3B:D3:28
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=26/70  Signal level=-84 dBm  
                    Encryption key:off
                    ESSID:"CESI_Corp"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=0000000498dfb1d2
                    Extra: Last beacon: 179ms ago
                    IE: Unknown: 0009434553495F436F7270
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030101
                    IE: Unknown: 050400010000
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD180050F20201018E0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3401000000000000000000000000000000000000000000
                    IE: Unknown: 3D1601000000000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD080013920100018500
          Cell 04 - Address: C0:8A:DE:7B:D3:28
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=26/70  Signal level=-84 dBm  
                    Encryption key:off
                    ESSID:"CESI_Hotspot"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=0000000498de2630
                    Extra: Last beacon: 281ms ago
                    IE: Unknown: 000C434553495F486F7473706F74
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030101
                    IE: Unknown: 050400010100
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD180050F20201018E0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3401000000000000000000000000000000000000000000
                    IE: Unknown: 3D1601000000000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD080013920100018500
          Cell 05 - Address: C0:8A:DE:3C:EA:B8
                    Channel:6
                    Frequency:2.437 GHz (Channel 6)
                    Quality=42/70  Signal level=-68 dBm  
                    Encryption key:off
                    ESSID:"CESI_Corp"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=00000000f660adb4
                    Extra: Last beacon: 83ms ago
                    IE: Unknown: 0009434553495F436F7270
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030106
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3406000000000000000000000000000000000000000000
                    IE: Unknown: 3D1606000000000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD180050F20201018C0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD080013920100018516
          Cell 06 - Address: C0:8A:DE:7C:EA:B8
                    Channel:6
                    Frequency:2.437 GHz (Channel 6)
                    Quality=41/70  Signal level=-69 dBm  
                    Encryption key:off
                    ESSID:"CESI_Hotspot"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=00000000f660b375
                    Extra: Last beacon: 83ms ago
                    IE: Unknown: 000C434553495F486F7473706F74
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030106
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C3406000000000000000000000000000000000000000000
                    IE: Unknown: 3D1606000000000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD180050F20201018C0003A4000027A4000042435E0062322F00
                    IE: Unknown: DD080013920100018516
          Cell 07 - Address: C0:8A:DE:39:D7:48
                    Channel:11
                    Frequency:2.462 GHz (Channel 11)
                    Quality=47/70  Signal level=-63 dBm  
                    Encryption key:off
                    ESSID:"CESI_Corp"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=0000000029c79a00
                    Extra: Last beacon: 497ms ago
                    IE: Unknown: 0009434553495F436F7270
                    IE: Unknown: 010482848B96
                    IE: Unknown: 03010B
                    IE: Unknown: 070C4652200101140601140B0114
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: Unknown: DD1E00904C338C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: 2D1A8C011BFFFF000000000000000000001000000000000000000000
                    IE: Unknown: DD1A00904C340B000000000000000000000000000000000000000000
                    IE: Unknown: 3D160B000000000000000000000000000000000000000000
                    IE: Unknown: 7F0400000000
                    IE: Unknown: DD180050F2020101880003A4000027A4000042435E0062322F00
                    IE: Unknown: DD080013920100018519
          Cell 08 - Address: C0:8A:DE:79:D7:48
                    Channel:11
                    Frequency:2.462 GHz (Channel 11)
                    Quality=45/70  Signal level=-65 dBm  
                    Encryption key:off
                    ESSID:"CESI_Hotspot"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=0000000029c7a414
                    Extra: Last beacon: 496ms ago

-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg
Type: application/octet-stream
Size: 127200 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160418/29781db1/attachment-0001.obj>
