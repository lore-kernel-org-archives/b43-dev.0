From: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 22 Nov 2011 17:13:13 +0100
Subject: BCM4312 LP-PHY DMA issues
In-Reply-To: <20111122000059.GB6004@datacomm.albany.edu>
References: <20111122000059.GB6004@datacomm.albany.edu>
Message-ID: <20111122161313.GA11018@nautica>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

Is the dmesg output the one without pio=1?
It says:
[   28.236344] b43-phy0: Loading firmware version 478.104 (2008-07-01
00:50:23)
[   33.772580] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000
[   33.778855] b43-phy0 ERROR: This device does not support DMA on your
system. It will now be switched to PIO.       
[   33.784685] b43-phy0: Controller RESET (DMA error) ...
                                      
so I would suppose it fell back to pio=1 and missed something during the
initialization (assuming it works when you modprobe it with pio=1
directly)
That being said, it is supposed to work on linux >= 3.0, so I'd try with
a more recent firmware just to see if it helps.
(cf. http://linuxwireless.org/en/users/Drivers/b43?highlight=%28b43%29#List_of_firmware
) 


Regards,
-- 
Asmadeus | Dominique Martinet


(it's not debugging the right part, and I won't be of much use since
I've never had a b43-compatible device, but you can have more
information about the deauth if you run "iw event" to get a few more
messages, or maybe wpa_supplicant debug output, since it says "local
choice" I would suppose wpa_supplicant isn't happy with something.)
