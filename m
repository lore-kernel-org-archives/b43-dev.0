From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 14 Mar 2012 17:38:48 +0100
Subject: Possible bug/error in web pages
In-Reply-To: <028EB217-5C26-408B-B425-0041FFDE742B@sms.ed.ac.uk>
References: <028EB217-5C26-408B-B425-0041FFDE742B@sms.ed.ac.uk>
Message-ID: <CACna6rwy1OPP+rnEbjPMCZoDHKoEZVYbtPQk5MzCBLy4ppoikg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/3/13 Alex Shearn <s0700157@sms.ed.ac.uk>:
> Hi everyone,
>
> Think this is either a bug or an error on the web page, unless I've just messed up the install?
>
> I've just installed a fresh version of Ubuntu 11.10 64bit, from the standard desktop cd.
> All boots fine, and I've just tried to switch to using the b43 drivers in order to play around with aircrack on a spare access point I had in the cupboard. The b43 driver is known to support injection in monitor mode.
>
> Listed on the page at http://linuxwireless.org/en/users/Drivers/b43#Supported_devices, my wireless card which is the standard Macbook unibody wireless card (model Macbook7,1) is stated as being supported for 3.1+:
>
>> 14e4:4353
>> yes (3.1+)
>> BCM43224
>> a/b/g/n
>> N (r6)
>> wl/brcm80211
>
> When I try to install the firmware-b43-installer package however, I get the following error:
>
>> Setting up firmware-b43-installer (1:014-9) ...
>> Unsupported device(s) found: PCI id 14e4:4353
>> Aborting.

It's Ubuntu script specific, you can report this to them directly. I
can't say if you're just using outdated version (of their script), or
something else. Ubuntu guys have to check/fix that.


> I tried the manual install by using b43-fwcutter directly, but then when I blacklist the existing driver (bcmsmac) and load b43, no wireless card appears.

I didn't notice any sign of loading "b43" in attached dmesg. Please
note that blacklisting brcmsmac (it's "brcmsmac", not "bcmsmac"!)
won't unload it if it's already loaded. You have to reboot system or
just use "rmmod brcmsmac".

I don't know what kernel you are using, but recently someone (John
AFAIR) forbidden b43 handling BCM43224 and BCM43225 devices without
special kernel option set when compiling. That means you'll have to
compile kernel on your own, or at least compat-wireless.

-- 
Rafa?
