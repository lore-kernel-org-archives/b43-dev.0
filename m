From: Chris Martin <chris@martin.cc>
Date: Tue, 13 Apr 2010 15:24:14 +1000
Subject: Asus 520gu
In-Reply-To: <20100412233313.542e9b8d.celejar@gmail.com>
References: <20100412233313.542e9b8d.celejar@gmail.com>
Message-ID: <k2gad2a7a4a1004122224yf34e4a7ao2876188c89fca683@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, Apr 13, 2010 at 1:33 PM, Celejar <celejar@gmail.com> wrote:

> Hi,
>
> The recent OpenWrt release, along with the recent b43 work on the LP
> PHY, inspired me to dig up my Asus 520gu and see what it could do.



> OpenWrt has the radio disabled out of the box.  When I enable it, the
> system seems to hang.  I say seems, since I don't have serial access -
> all I know is that my telnet connection dies / freezes, and I can't log
> in again.  All I can do is reflash.
>
> Celejar
> -- <http://foffl.sourceforge.net>
>


I too have been looking the latest Openwrt release and the b43 driver
and I too was hoping that support for the broadcom 5354 was included
I have a console on my router so I can see what is going on

When the wireless is enabled the b43 driver "appears" to eat all memory and
I get OOM (Out Of Memory) errors
This has been reported on the Openwrt Trac site
https://dev.openwrt.org/ticket/7117
https://dev.openwrt.org/ticket/6907

I have yet to confirm if it is the b43 driver, mac80211, or other component
When I test on other broadcom chipssets that are not "5354" I have no real
issues
So the most likely culprit is the LP-PHY in the b43 driver, but this is yet
to be confirmed.

I have tested with a 2.6.33.2 kernel and the latest wireless compat

I have also only tested in AP mode.  I have not tried AH or STA ..  yet

cheers.

----------------------------------------------------------
Chris Martin
m: 0419812371
----------------------------------------------------------
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100413/d73a1d4b/attachment.htm>
