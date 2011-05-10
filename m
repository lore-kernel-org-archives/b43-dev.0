From: Cedric Sodhi <manday@gmx.net>
Date: Tue, 10 May 2011 13:35:39 +0200
Subject: BCMSMAC freezes system on trivial oeprations]
Message-ID: <20110510113539.GE2444@fly>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

My apologies, I have sent the below email to roland only and neglected
to send it to you. I'll provide the further information that you
requested in a separate email.

Cedric

----- Forwarded message from Cedric Sodhi <manday@gmx.net> -----


Dear Roland,

I'm sorry if I happend to address the wrong people. The driver that is
running the device is part of the staging drivers, the according option
is

CONFIG_BRCMSMAC

and the built module is 

/lib/modules/2.6.39-rc6-next-20110506/kernel/drivers/staging/brcm80211/brcmsmac/brcmsmac.ko

You can also see the kernel version in that line. I've read on
linux-wireless that you guys (whose addresses are/were stated explicitly
in the To: field) are responsible for brcmsmac. Though I read that b43
does not support that chip, I deemed it a superclass, so I also directed
the mail to the according list.

So far, I no longer experience any problems besides the one that pushing
the H/W wired WLAN-Switch will unrecoverably freezes the kernel in
hard-lock. I reckon though, that it will be not long until I run into
that former, more devastating problem again.

I'll keep you posted. I hope I did not neglect any information. Feel
free to ask, and thanks for caring.

Cedric

On Mon, May 09, 2011 at 05:21:52PM +0200, Roland Vossen wrote:
> Hello Cedric,
> 
> I am a developer in the brcm80211 team. You write that you have a 
> built-in onboard BRCM 4727, but that chip is not supported by the 
> brcm80211 driver module. Are you sure you are running brcm80211, since 
> the b43 mailing list (which is a different driver) is on the CC ?
> 
> Can you tell me what kernel version (likely you are on Greg KH's 
> bleeding edge kernel) and what Linux distro you are running ? There have 
> been a couple of stability fixes to brcm80211 in the past, one of them 
> had to do with the RFKILL switch. If you are not running a bleeding edge 
> kernel, I would advise you to install the latest compat-wireless package.
> 
> Let me know how this goes.
> 
> Thanks, Roland.
> 
> On 05/09/2011 03:55 PM, Cedric Sodhi wrote:
> > I need to reply to my own message. After I just returned home, it
> > appeared that the computer had no problem whatsoever connecting to my
> > local home network. As if nothing had ever happend. Well, the
> > "WLAN-Button" still hardlocks the machine but apart from that I have no
> > indication of problems.
> >
> > I'll let you know as soon as I know more and wpulwd appreciate any kind
> > of comments in the meantime.
> >
> > regards,
> > Cedric
> >
> >
> > On Mon, May 09, 2011 at 03:44:16PM +0200, Cedric Sodhi wrote:
> >> I use an HP Touchsmart tm2 laptop which has an onboard BRCM 4727- I used to compile my kernel with BCMSMAC module.
> >>
> >> At first, I got regular kernel panics that, according to the printed-out stack originated somewhere from the BRCM driver and for which I could not exactly tell the reason (I assume it had something to do with roaming between APs).
> >>
> >> Also, the laptop has a dedicated button to activating/deactivating the WLAN device, besides it has a BIOS wired funtion key, that does the same - at least that what it does in Windows and what HP says it should do.
> >>
> >> When pressing either of the buttons, the kernel would hard-lock without any further notice and the computer could only be brought down through a hard reset.
> >>
> >> This was awful enough, so I though I could try enabling the rfkill kernel compoenent as it seems related (layman at work, as you can tell). Recompiling that way (linux-next, by the way, *not* on wireless-testing yet) and also modifiying another few minor settings resulted in a desaster:
> >>
> >> Since then - *even after I have reerted all changes and gone back to the kernel which was known to have worked last!!!* - as soon as the BCMSMAC module is either ocmpiled in or loaded, trivial commands such as ifconfig, iwconfig or just exit (!!!) freeze in a State D (awaiting IO) and can not be killed by even kill -9 or -1.
> >>
> >> Shutting the system down is equally impossible without the help of SysReqs. Pushing the WLAN-Button still hardfreezes the system.
> >>
> >> You can safely assume that practically *any* operation that is remotely related to the device, such as echo'ing to the rfkill /sys device, too, plus many commands that appear not to be related at all, such as "exit" will freeze in state D and cannot be killed by any means possible.
> >>
> >> Pressing aforementioned "WLAN Button" will make these commands resume, just for a split second, before the system hard-locks.
> >>
> >> Most puzzling about that, I find, is that reverting to the known-as-having-worked setup (exactly the same) has not got the system back to working.
> >>
> >> I have two theories: Either there is some evil, hidden hardware switch on the device that has been triggered and not been reset since and that is causing all this right now, or some very crucial part of the system has been damaged by the regular hard-reset (which I deem unlikely since it would not explain why all sorts of programs freeze for no apparent reason).
> >>
> >> So far, the system is practically not usuable - at least not with the driver activated - I'm in desperate need for your help. I can reformat and resetup everything, but I need to know a solution to this in the long term and I really don't know what else to try.
> >>
> >>
> >> _______________________________________________
> >> b43-dev mailing list
> >> b43-dev at lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/b43-dev
> >
> 

----- End forwarded message -----
