From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 05 Apr 2011 15:50:10 -0500
Subject: [RFC][PATCH] bcmai: introduce AI driver
In-Reply-To: <BANLkTimTmqop-xzFsWr1=2RXv5z6iTre4Q@mail.gmail.com>
References: <1302033463-1846-1-git-send-email-zajec5@gmail.com>	<1302032137.3969.10.camel@Joe-Laptop>
	<BANLkTimTmqop-xzFsWr1=2RXv5z6iTre4Q@mail.gmail.com>
Message-ID: <4D9B8082.10201@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Joe Perches <joe@perches.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>, Arend van Spriel <arend@broadcom.com>, George Kashperko <george@znau.edu.ua>, b43-dev@lists.infradead.org

On 04/05/2011 03:15 PM, Rafa? Mi?ecki wrote:
>
> I was reading about __packed long time ago and it was a little tricky
> for me. However I don't see anything in mod_devicetable.h using that
> __packed. Why should we?

Packed should only be used for those structs that are read/written by some 
entity other than the main CPU. For example, RX and TX descriptors must be 
packed. Otherwise, you should let the compiler align them any way that it thinks 
might be more efficient. If that requires holes to aligh a 16-bit quantity, let 
it. Of course, it would not make any difference for x86 on this one, but for 
some architectures (ARM, I think is one), the system must do byte accesses for 
all entries in a packed struct, just in case they are unaligned.

Larry
