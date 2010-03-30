From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 30 Mar 2010 18:56:09 +0200
Subject: Broadcom card totally not visible for system (lspci)
Message-ID: <b170af451003300956r7fbd7812jdb40d125aeaf1b32@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

I've some polish user that has Medion (???) notebook with "BCM4306KFB
HS00328 P20 702910 M2" (citation from spec).

This card worked fine in Windows and few days ago user decided to
install openSUSE 11.2 (2.6.31.12). AFAIK he removed Windows and has
openSUSE now only.

The problem is that system does not detect his WiFi card at all. lspci shows:
00:00.0 Host bridge: ATI Technologies Inc AGP Bridge [IGP 320M] (rev 13)
00:01.0 PCI bridge: ATI Technologies Inc PCI Bridge [IGP 320M] (rev 01)
00:07.0 ISA bridge: ALi Corporation M1533/M1535/M1543 PCI to ISA
Bridge [Aladdin IV/V/V+]
00:08.0 Multimedia audio controller: ALi Corporation M5451 PCI AC-Link
Controller Audio Device (rev 02)
00:09.0 Modem: ALi Corporation M5457 AC'97 Modem Controller
00:0a.0 CardBus bridge: Texas Instruments PCI4410 PC card Cardbus
Controller (rev 02)
00:0a.1 FireWire (IEEE 1394): Texas Instruments PCI4410 FireWire
Controller (rev 02)
00:0d.0 USB Controller: NEC Corporation USB (rev 43)
00:0d.1 USB Controller: NEC Corporation USB (rev 43)
00:0d.2 USB Controller: NEC Corporation USB 2.0 (rev 04)
00:0e.0 Ethernet controller: Broadcom Corporation BCM4401 100Base-T (rev 01)
00:10.0 IDE interface: ALi Corporation M5229 IDE (rev c4)
00:11.0 Bridge: ALi Corporation M7101 Power Management Controller [PMU]
01:05.0 VGA compatible controller: ATI Technologies Inc Radeon Mobility U1

You can find more logs on out polish forum:
http://forum.suse.pl/index.php/topic,22826.0/topicseen.html

He put dmesg on pastebin, which I prefer to just attach.

I've googled only one similar problem:
http://ubuntuforums.org/showthread.php?t=712272

Do you have any ideas what may this be?

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg.log
Type: text/x-log
Size: 77246 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100330/a175495d/attachment-0001.bin>
