From: Cedric Sodhi <manday@gmx.net>
Date: Tue, 10 May 2011 13:43:18 +0200
Subject: BCMSMAC freezes system on trivial oeprations
In-Reply-To: <4DC919FD.8060200@broadcom.com>
References: <20110509134416.GA1932@engine>
 <4DC919FD.8060200@broadcom.com>
Message-ID: <20110510114318.GF2444@fly>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

1 - The distro is Gentoo
2 - Initially? I don't understand the question
3 - No, I did not find an easy way to obtain the trace on a panic at
    first. I've by now learned about options which allow to dump the
    strace to flash.
4 - Gitweb tarball. Hence, I can no longer provide a SHA1, since it was
    an archive. As stated in my last email the best I can provide you
    with is the following string:

    Linux 2.6.39-rc6-next-20110506
5 - I think I've noted that the rfkill sysnode  freezes as ifconfig,
    iwconfig, exit and others do. Now, under these new circumstances
    where all problems (apart from the button-triggered freeze) seem to
    have vanished, I can try both, writing to it again and running
    rfkill. I'll do so after I have dispatched this mail as I do reckon
    with new freezes and hardlocks. I will provide further information
    in another email just in a short while.

regards,
Cedric

On Tue, May 10, 2011 at 12:57:01PM +0200, Arend van Spriel wrote:
> On 05/09/2011 03:44 PM, Cedric Sodhi wrote:
> > I use an HP Touchsmart tm2 laptop which has an onboard BRCM 4727- I used to compile my kernel with BCMSMAC module.
> Hi Cedric,
> 
> This story is quite erratic so I want to get some basic information first.
> 
> 1) what linux distro are you using?
> 2) what kernel version are you running (initially)?
> > At first, I got regular kernel panics that, according to the printed-out stack originated somewhere from the BRCM driver and for which I could not exactly tell the reason (I assume it had something to do with roaming between APs).
> 3) do you have any trace information on the 'regular kernel panics'?
> > Also, the laptop has a dedicated button to activating/deactivating the WLAN device, besides it has a BIOS wired funtion key, that does the same - at least that what it does in Windows and what HP says it should do.
> >
> > When pressing either of the buttons, the kernel would hard-lock without any further notice and the computer could only be brought down through a hard reset.
> >
> > This was awful enough, so I though I could try enabling the rfkill kernel compoenent as it seems related (layman at work, as you can tell). Recompiling that way (linux-next, by the way, *not* on wireless-testing yet) and also modifiying another few minor settings resulted in a desaster:
> 4) how did you obtain linux-next? git? when using git can you provide sha1?
> > Since then - *even after I have reerted all changes and gone back to the kernel which was known to have worked last!!!* - as soon as the BCMSMAC module is either ocmpiled in or loaded, trivial commands such as ifconfig, iwconfig or just exit (!!!) freeze in a State D (awaiting IO) and can not be killed by even kill -9 or -1.
> 5) could you try the 'rfkill' command?
> 
> Gr. AvS
> 
> -- 
> Almost nobody dances sober, unless they happen to be insane.
> -- H.P. Lovecraft --
> 
