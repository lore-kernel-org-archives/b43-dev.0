From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 30 Mar 2010 12:48:03 -0500
Subject: Broadcom card totally not visible for system (lspci)
In-Reply-To: <b170af451003301031yd06f559j85fd30417af32113@mail.gmail.com>
References: <b170af451003300956r7fbd7812jdb40d125aeaf1b32@mail.gmail.com>	
	<4BB2328D.9010503@lwfinger.net>
	<b170af451003301031yd06f559j85fd30417af32113@mail.gmail.com>
Message-ID: <4BB23953.9010104@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 03/30/2010 12:31 PM, Rafa? Mi?ecki wrote:
> 
> Is this possible it's disabled in BIOS by default and needs execution
> of some ACPI command or sth to make it work?
> 
> Yeah, trying to find some other reason than faulty WiFi... It's weird
> it was working fine "before a moment" on Windows.

Winblows can fiddle with the "Wake-on-LAN" setting in the BIOS, but AFAIK, the
BCM4306 does not have this capability. If the BIOS has that setting, it should
be turned off.

Larry
