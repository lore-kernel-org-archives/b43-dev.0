From: Peter Stuge <peter@stuge.se>
Date: Thu, 27 Jan 2011 17:47:17 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
Message-ID: <20110127164717.7220.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

Rafa? Mi?ecki wrote:
> I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
> inserted into PC.  Unfortunately after inserting my Broadcom card to
> it, it is not detected in "lspci" at all.

Tried the various -A options?

linux-sysfs
linux-proc
intel-conf1
intel-conf2

The BIOS could be causing trouble. If intel-conf1 doesn't work then
try inserting any working PCIe card into the slot, note the bus:slot
it gets, and finally reboot with the wifi card and run:

lspci -A intel-conf1 -s bus:slot


//Peter
