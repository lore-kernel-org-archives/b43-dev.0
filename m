From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 5 Dec 2020 11:56:36 -0600
Subject: where to find b43 firmware?
In-Reply-To: <CAJCQCtQH3ew2-Nmd_ybyx9AXX4=77tAfnZSr_TW7XRtvtn8sxg@mail.gmail.com>
References: <CAJCQCtQH3ew2-Nmd_ybyx9AXX4=77tAfnZSr_TW7XRtvtn8sxg@mail.gmail.com>
Message-ID: <3bb06cbf-ce9a-73be-9baa-142c1a70f0b2@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12/5/20 12:31 AM, Chris Murphy wrote:
> Hi,
> 
> When I boot kernel 5.10-rc6, I see this message:
> 
> [    9.850583] b43-phy0 ERROR: You must go to
> https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware
> and download the correct firmware for this driver version. Please
> carefully read all instructions on this website.
> 
> When I go to that URL, there's no download for firmware or any
> reference how to find out where to download it from. It's a dead end.
> 
> This page includes:
> You need to have firmware files (usually in /lib/firmware/) so
> b43(legacy) can upload them to the card and run properly.
> 
> Sure, OK. But how do I do that? There isn't even a mention of
> b43-fwcutter on this page.

The previous version of that web page, referenced on the 3rd line of the page 
you noted, (http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/) has the 
instructions for downloading that firmware on Fedora, openSUSE, and 
Ubuntu/Debian distros. You do not say what distro you are running, but one of 
those 4 should provide the rpm or deb file that you need.

We have always been hampered by Broadcom's refusal to redistribute that 
firmware, thus it cannot be put into the linux-firmware repo at git.kernel.org.

If you are unable to get this firmware through that web page, write me privately.

Larry
