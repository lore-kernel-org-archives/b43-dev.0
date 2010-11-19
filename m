From: Daniel Klaffenbach <danielklaffenbach@gmail.com>
Date: Fri, 19 Nov 2010 18:26:25 +0100
Subject: BCM4318KFBG not recognized by b43
In-Reply-To: <AANLkTimAk2Mf7PvhyOZ3PGEg15hgznbySADn6OpbGS4F@mail.gmail.com>
References: <AANLkTinoQH52c33L2UMo3=03Oq2qGqNDcnQ3iiffZ334@mail.gmail.com>
	<201011172348.43346.danielklaffenbach@gmail.com>
	<AANLkTimAk2Mf7PvhyOZ3PGEg15hgznbySADn6OpbGS4F@mail.gmail.com>
Message-ID: <201011191826.31024.danielklaffenbach@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

On Thursday 18 November 2010 00:10:23 Rafa? Mi?ecki wrote:
> Would be nice. I was afraid compiling kernel for OpenWRT won't be
> easy/fast.
I've recompiled the latest OpenWRT trunk. I did turn on debugging symbols and 
I've also applied the patch I did send earlier and to my surprise the module 
loded without any complaints. dmesg gave me the following message:

b43-phy0: Broadcom 4318 WLAN found (core revision 9)
ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
Broadcom 43xx driver loaded [ Features: PL, GPIO LED Mask: 0x000f,
Firmware-ID: FW13 ]
b43 ssb1:0: firmware: requesting b43/ucode5.fw
b43 ssb1:0: firmware: requesting b43/pcm5.fw
b43 ssb1:0: firmware: requesting b43/b0g0initvals5.fw
b43 ssb1:0: firmware: requesting b43/b0g0bsinitvals5.fw
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)

After doing some basic testing I can confirm that the card is working! I do not 
know why it did give me the errors the last time, but I also did a nvram reset 
of the box today - maybe that did the trick.

It would be nice if you could review my changes to 
drivers/ssb/b43_pci_bridge.c and include/linux/pci_ids.h and add the vendor id 
upstream.


Regards,
Daniel
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 198 bytes
Desc: This is a digitally signed message part.
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101119/3ee0c1d3/attachment.sig>
