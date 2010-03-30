From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 30 Mar 2010 21:29:23 +0200
Subject: Broadcom card totally not visible for system (lspci)
In-Reply-To: <1269975753.4938.8.camel@mj>
References: <b170af451003300956r7fbd7812jdb40d125aeaf1b32@mail.gmail.com>
	<4BB2328D.9010503@lwfinger.net>
	<b170af451003301031yd06f559j85fd30417af32113@mail.gmail.com>
	<4BB23953.9010104@lwfinger.net>  <1269975753.4938.8.camel@mj>
Message-ID: <1269977363.3927.26.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Tue, 2010-03-30 at 15:02 -0400, Pavel Roskin wrote:
> On Tue, 2010-03-30 at 12:48 -0500, Larry Finger wrote:
> > On 03/30/2010 12:31 PM, Rafa? Mi?ecki wrote:
> > > 
> > > Is this possible it's disabled in BIOS by default and needs execution
> > > of some ACPI command or sth to make it work?
> > > 
> > > Yeah, trying to find some other reason than faulty WiFi... It's weird
> > > it was working fine "before a moment" on Windows.
> > 
> > Winblows can fiddle with the "Wake-on-LAN" setting in the BIOS, but AFAIK, the
> > BCM4306 does not have this capability. If the BIOS has that setting, it should
> > be turned off.
> 
> Perhaps it's a crazy idea, but what if the Ethernet device and the WiFi
> device are connected to the same SSB bus, an thus sharing the PCI ID?

Should be fine, actually, since b43 binds the 802.11 ssb core.

johannes
