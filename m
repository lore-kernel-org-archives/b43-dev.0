From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 29 Oct 2013 09:42:04 -0500
Subject: Problems with Broadcom wireless BCM4306 on HP Compaq NX9105
In-Reply-To: <526FB25B.6040903@berwers.org>
References: <526FB25B.6040903@berwers.org>
Message-ID: <526FC93C.4030004@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/29/2013 08:04 AM, Ben Berwers wrote:
> Dear mr/mrs,
>
> I cannot properly get the wireless card Broadcom BCM 4306 (14e4:4320 Rev. 03)
> (b43legacy?) working.
>
> Being a newby in Linux land (former Windows-user and now Mac user) I did the
> following to install the b43 driver:
>
> sudo apt-get update && sudo apt-get upgrade
> sudo apt-get install b43-fwcutter firmware-b43-installer
>
> The card worked for a while, then the blue led on the corner started to blink
> instead of burning constantly and then the card stopped working.
>
> Could you please give me some hints?
>
> Thank you in advance,
>
> Ben Berwers
> ben at berwers.org
> Assen, the Netherlands
> +31 592 795987
>
>
>   $ uname -a
> Linux ben-hp-compaq-nx9105-PG693EA-ACB 3.2.0-23-generic #36-Ubuntu SMP Tue Apr
> 10 20:39:51 UTC 2012 x86_64 x86_64 x86_64 GNU/Linux
>
>
> $ lspci -vvn|grep 43 -A7
> 02:02.0 0280: 14e4:4320 (rev 03)
>      Subsystem: 103c:12fa
>      Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR+ FastB2B- DisINTx-
>      Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
> <MAbort- >SERR- <PERR- INTx-
>      Latency: 64
>      Interrupt: pin A routed to IRQ 17
>      Region 0: Memory at e0104000 (32-bit, non-prefetchable) [size=8K]
>      Kernel driver in use: b43-pci-bridge
>      Kernel modules: wl, ssb
>
> 02:04.0 0607: 104c:ac54 (rev 01)
>      Subsystem: 103c:006d
>      Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx-
>      Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort-
> <MAbort- >SERR- <PERR- INTx-
>      Latency: 168, Cache Line Size: 64 bytes
>
>
> dmesg:
>> UDP SPT=58930 DPT=8612 LEN=24
>> [ 8819.356080] [UFW BLOCK] IN=eth0 OUT=
>> MAC=01:00:5e:00:00:01:00:1f:f3:54:c8:b5:08:00 SRC=10.0.1.2 DST=224.0.0.1
>> LEN=44 TOS=0x00 PREC=0x00 TTL=1 ID=24539 PROTO=UDP SPT=51264 DPT=8612 LEN=24
>> [ 8840.650172] [UFW BLOCK] IN=eth0 OUT=
>> MAC=01:00:5e:00:00:01:00:1f:f3:54:c8:b5:08:00 SRC=10.0.1.2 DST=224.0.0.1
>> LEN=44 TOS=0x00 PREC=0x00 TTL=1 ID=21768 PROTO=UDP SPT=51628 DPT=8612 LEN=24
>> [ 8861.942562] [UFW BLOCK] IN=eth0 OUT=
>> MAC=01:00:5e:00:00:01:00:1f:f3:54:c8:b5:08:00 SRC=10.0.1.2 DST=224.0.0.1

Everything you posted as dmesg output came from your firewall and involved eth0, 
not your wireless card. As such, that output tells us nothing.

A BCM4306 (14e4:4320) with Rev 3 should use b43, not b43legacy. You could tell 
that by looking at the output of dmesg immediately after running the following 
two commands:

sudo /sbin/modprobe -rv b43
sudo /sbin/modprobe -v b43

A BCM4306 is pretty simple. The one I use is a PCMCIA device with two LEDs. One 
is steady to indicate power, and the other blinks when there is traffic. I have 
no idea what configuration you have, or what the LEDs indicate.

When the device stopped working, what was changed on your system? Was there a 
new kernel, or did some other software get changed? Perhaps your device 
malfunctioned.

Larry
