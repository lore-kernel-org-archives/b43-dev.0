From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Wed, 9 Nov 2011 12:50:21 +0100
Subject: [PATCH] ssb: Ignore dangling ethernet cores on wireless devices
In-Reply-To: <1320837297.1926.6.camel@shinybook.infradead.org>
References: <1294426085.18385.8.camel@maggie>
 <1320837297.1926.6.camel@shinybook.infradead.org>
Message-ID: <CA+XFjir0yGWWUdt5YD8DuSjFk0pi0yEhzqQR020d5G06ah7XgQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2@infradead.org>
Cc: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>

On Wed, Nov 9, 2011 at 12:14 PM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Fri, 2011-01-07 at 19:48 +0100, Michael B?sch wrote:
>>
>> + ? ? ? ? ? ? ? case SSB_DEV_ETHERNET:
>> + ? ? ? ? ? ? ? ? ? ? ? if (bus->bustype == SSB_BUSTYPE_PCI) {
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? if (bus->host_pci->vendor == PCI_VENDOR_ID_BROADCOM &&
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? (bus->host_pci->device & 0xFF00) == 0x4300) {
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? /* This is a dangling ethernet core on a
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?* wireless device. Ignore it. */
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? continue;
>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? }
>> + ? ? ? ? ? ? ? ? ? ? ? }
>> + ? ? ? ? ? ? ? ? ? ? ? break;
>
> Do you also need to check for (bus->host_pci->device / 1000) == 43?
> Or do the chips with 5-digit 'decimal' IDs not have the Ethernet cores?
>
> Would it be better to invert the test and check for != 0x4400?

I do not know of any Broadcom wireless device with a decimal PCI ID
(as opposed to a decimal Chip ID).

>
> --
> dwmw2
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
