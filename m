From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 30 Mar 2010 21:06:27 +0200
Subject: Broadcom card totally not visible for system (lspci)
In-Reply-To: <1269975753.4938.8.camel@mj>
References: <b170af451003300956r7fbd7812jdb40d125aeaf1b32@mail.gmail.com>
	<4BB2328D.9010503@lwfinger.net>
	<b170af451003301031yd06f559j85fd30417af32113@mail.gmail.com>
	<4BB23953.9010104@lwfinger.net> <1269975753.4938.8.camel@mj>
Message-ID: <b170af451003301206p593cbe3ew582823c75dc06f11@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2010/3/30 Pavel Roskin <proski@gnu.org>:
> On Tue, 2010-03-30 at 12:48 -0500, Larry Finger wrote:
>> On 03/30/2010 12:31 PM, Rafa? Mi?ecki wrote:
>> >
>> > Is this possible it's disabled in BIOS by default and needs execution
>> > of some ACPI command or sth to make it work?
>> >
>> > Yeah, trying to find some other reason than faulty WiFi... It's weird
>> > it was working fine "before a moment" on Windows.
>>
>> Winblows can fiddle with the "Wake-on-LAN" setting in the BIOS, but AFAIK, the
>> BCM4306 does not have this capability. If the BIOS has that setting, it should
>> be turned off.
>
> Perhaps it's a crazy idea, but what if the Ethernet device and the WiFi
> device are connected to the same SSB bus, an thus sharing the PCI ID?
>
> Is there the full kernel log? ?In particular, the lines containing "ssb"
> would be interesting.

You mean dmesg, don't you? I've attached it, but it was stopped by b43
ML. You can see dmesg on marc archive for linux-wireless:
http://marc.info/?l=linux-wireless&m=126996817625998&w=2

Unfortunately I don't have dmesg from some more-debugging kernel.

-- 
Rafa?
