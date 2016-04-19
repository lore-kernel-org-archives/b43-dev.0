From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 19 Apr 2016 09:39:42 -0500
Subject: b43 driver
In-Reply-To: <1461037534.26856.24.camel@van.vsnyder>
References: <1461037534.26856.24.camel@van.vsnyder>
Message-ID: <5716432E.8060603@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/18/2016 10:45 PM, Van Snyder wrote:
> I can't find a b43 driver anywhere.  All I can find is advice on how to
> use b43-fwcutter and b43-firmware-install.
>
> I have Scientific Linux 7.2.  The wireless is BCM4312.  I have b44,
> which works fine for the BCM4401-B0.
>
> I have also gotten advice to use broadcom-wl, and either wl-kmod or
> kmod-wl, none of which I can find.
>
> What do you recommend (other than replacing the wireless network card,
> which isn't a card -- it's integrated on the motherboard)?

The driver for b43 has been built into the kernel for a very long time, and I 
test it regularly. You said what distro you use, but not the kernel version, 
which is much more important. You can get that info from a "uname -r" command. 
Post the output of that command, and the output from the "dmesg | grep b43" 
command. From there, we should be able to proceed.

It is possible that the on-board wireless has failed. That has happened to a 
couple of the old laptops that I keep for testing.

Larry
