From: Falco Preiseni <apfelkomplott2014@mailbox.org>
Date: Sun, 4 Jan 2015 18:13:08 +0100 (CET)
Subject: BCM43228 not working (no access points shown)
Message-ID: <89580273.9420.1420391589215.JavaMail.open-xchange@ox3app>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello everyone,

my Broadcom BCM43228 wifi card is not able to show any access points (neither
with "iw wlpx scan" nor with NetworkManager). Connecting with the ESSID does not
work, either. According to the LED and the output of "ip link" the card is
active. Furthermore "lspci -k" tells that "bcma-pci-bridge" is the kernel driver
in use despite I modprobed b43. According to [3] this could be a sign that b43
ignores my device. Or is this label normal?

I followed the instructions on the ArchLinux Wiki[1] (which should align with
the official instructions [2]), installed b43-fwcutter and b43-firmware in order
to obtain the firmware version 5.100.138 and I also tried a newer firmware
(6.30.163.46). Currently I have blacklisted almost everything (b43legacy,
bcma-pci-bridge, bcma, brcmsmac, ssb and b43) and activated "option b43
allhwsupport=1" and modprobed b43 by hand.

I did a lot of reasearch but wasn't able to solve my problem. At least the label
"bcma-pci-bridge" looks like a bug but I don't know. Any idea what's wrong?

Best wishes,
Falco

[1] https://wiki.archlinux.org/index.php/B43#b43.2Fb43legacy
[2] http://wireless.kernel.org/en/users/Drivers/b43
[3]
http://www.linuxforums.org/forum/wireless-internet/188346-b43-requiring-bcma-ssb.html#post889324

$ uname -a
Linux hugo 3.17.6-1-ARCH #1 SMP PREEMPT Sun Dec 7 23:43:32 UTC 2014 x86_64
GNU/Linux
(current ArchLinux kernel from the official repo)

$ lspci -vvn|grep 43 -A7
02:00.0 0280: 14e4:4359
	DeviceName: WLAN
	Subsystem: 14e4:05e2
	Physical Slot: 0
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping-
SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx+
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 54

$ lspci -k
...
02:00.0 Network controller: Broadcom Corporation BCM43228 802.11a/b/g/n
	DeviceName: WLAN
	Subsystem: Broadcom Corporation Device 05e2
	Kernel driver in use: bcma-pci-bridge
	Kernel modules: bcma
...

$ dmesg
pasted here: http://paste.opensuse.org/79451668
