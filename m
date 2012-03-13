From: Alex Shearn <s0700157@sms.ed.ac.uk>
Date: Tue, 13 Mar 2012 22:34:04 +0000
Subject: Possible bug/error in web pages
Message-ID: <028EB217-5C26-408B-B425-0041FFDE742B@sms.ed.ac.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi everyone,

Think this is either a bug or an error on the web page, unless I've just messed up the install?

I've just installed a fresh version of Ubuntu 11.10 64bit, from the standard desktop cd.
All boots fine, and I've just tried to switch to using the b43 drivers in order to play around with aircrack on a spare access point I had in the cupboard. The b43 driver is known to support injection in monitor mode.

Listed on the page at http://linuxwireless.org/en/users/Drivers/b43#Supported_devices, my wireless card which is the standard Macbook unibody wireless card (model Macbook7,1) is stated as being supported for 3.1+:

> 14e4:4353
> yes (3.1+)
> BCM43224
> a/b/g/n
> N (r6)
> wl/brcm80211

When I try to install the firmware-b43-installer package however, I get the following error:

> Setting up firmware-b43-installer (1:014-9) ...
> Unsupported device(s) found: PCI id 14e4:4353 
> Aborting.

I tried the manual install by using b43-fwcutter directly, but then when I blacklist the existing driver (bcmsmac) and load b43, no wireless card appears.

The following files contain the output of the different commands:

http://homepages.inf.ed.ac.uk/s0700157/dmesg.output
http://homepages.inf.ed.ac.uk/s0700157/lspci.output
http://homepages.inf.ed.ac.uk/s0700157/uname.output

http://homepages.inf.ed.ac.uk/s0700157/install.output

Any help appreciated!

Alex



-- 
The University of Edinburgh is a charitable body, registered in
Scotland, with registration number SC005336.
