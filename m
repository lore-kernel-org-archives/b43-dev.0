From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 9 Nov 2011 13:16:07 +0100
Subject: [PATCH] ssb: Ignore dangling ethernet cores on wireless devices
In-Reply-To: <CA+XFjip8ithvfY_zdQbY0SogJfJyBv4nXyugPSjudYJcuQfa_Q@mail.gmail.com>
References: <1294426085.18385.8.camel@maggie>
 <1320837297.1926.6.camel@shinybook.infradead.org>
 <CA+XFjir0yGWWUdt5YD8DuSjFk0pi0yEhzqQR020d5G06ah7XgQ@mail.gmail.com>
 <CA+XFjip8ithvfY_zdQbY0SogJfJyBv4nXyugPSjudYJcuQfa_Q@mail.gmail.com>
Message-ID: <CAOiHx=kVL3dewGR=utxfKMVmJ4zEbzXmSXEnCH_8ypwkQ5WhmQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: David Woodhouse <dwmw2@infradead.org>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>

On 9 November 2011 12:51, G?bor Stefanik <netrolller.3d@gmail.com> wrote:
> On Wed, Nov 9, 2011 at 12:50 PM, G?bor Stefanik <netrolller.3d@gmail.com> wrote:
>> On Wed, Nov 9, 2011 at 12:14 PM, David Woodhouse <dwmw2@infradead.org> wrote:
>>> On Fri, 2011-01-07 at 19:48 +0100, Michael B?sch wrote:
>>>>
>>>> + ? ? ? ? ? ? ? case SSB_DEV_ETHERNET:
>>>> + ? ? ? ? ? ? ? ? ? ? ? if (bus->bustype == SSB_BUSTYPE_PCI) {
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? if (bus->host_pci->vendor == PCI_VENDOR_ID_BROADCOM &&
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? (bus->host_pci->device & 0xFF00) == 0x4300) {
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? /* This is a dangling ethernet core on a
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?* wireless device. Ignore it. */
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? continue;
>>>> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? }
>>>> + ? ? ? ? ? ? ? ? ? ? ? }
>>>> + ? ? ? ? ? ? ? ? ? ? ? break;
>>>
>>> Do you also need to check for (bus->host_pci->device / 1000) == 43?
>>> Or do the chips with 5-digit 'decimal' IDs not have the Ethernet cores?
>>>
>>> Would it be better to invert the test and check for != 0x4400?
>>
>> I do not know of any Broadcom wireless device with a decimal PCI ID
>> (as opposed to a decimal Chip ID).
>
> Edit: However, 0x4700 should also be checked, as some BCM43xx chips
> use 0x47xx PCI IDs.

As far as I can tell from this snippet (I'm missing the original
message), this code is SSB, and the only 0x47xx I know of is the
BCM4313, and that's a BCMA card. So this doesn't apply here.

Same for the five digit Chip IDs (which might leak into the PCI ID, if
the card has no SPROM), AFAIK these are also BCMA exclusive.


A check for != 0x44xx would probably still the safest way.


Regards
Jonas
