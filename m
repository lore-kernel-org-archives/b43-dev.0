From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 06 Jan 2011 22:31:13 -0600
Subject: Odd behavior of ssb, b43, b43legacy, and b44
In-Reply-To: <1294371276.15564.0.camel@maggie>
References: <4D262109.20504@lwfinger.net>	
	(sfid-20110106_210800_770742_63AA2C67)
	<1294371276.15564.0.camel@maggie>
Message-ID: <4D269711.1040003@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On 01/06/2011 09:34 PM, Michael B?sch wrote:
> 
> Does one of these wireless cards have a dangling ethernet core? I would
> not be surprised...

Yes. The core scan for the BCM4303 is as follows:

ssb: Core 0 found: IEEE 802.11 (cc 0x812, rev 0x02, vendor 0x4243)
ssb: Core 1 found: PCMCIA (cc 0x80D, rev 0x00, vendor 0x4243)
ssb: Core 2 found: Fast Ethernet (cc 0x806, rev 0x02, vendor 0x4243)
ssb: Core 3 found: V90 (cc 0x807, rev 0x01, vendor 0x4243)
ssb: Core 4 found: PCI (cc 0x804, rev 0x03, vendor 0x4243)
ssb: Sonics Silicon Backplane found on PCI device 0000:01:09.0

Larry
