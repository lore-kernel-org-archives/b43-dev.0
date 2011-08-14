From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 14 Aug 2011 12:59:55 -0500
Subject: Questions about firmware
Message-ID: <4E480D1B.2000805@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafa?,

I have finished modifying fwcutter to handle the 5 new files in your site that 
are now transferred to mine. I will be sending the patches to Michael as soon as 
the issue of the location of the files is resolved.

As I understand it, one needs to extract firmware from the 5.100.138 driver to 
handle an HT PHY; however, my experience is that the older FW is also converted 
to the new RX descriptors, and that using it with an unmodified driver will fail.

As I am in the process of updating the install_bcm43xx_firmware script for 
openSUSE, we need to decide how to handle the situation. Thus far, I have two 
possible solutions:

1. Change the default firmware directory for any version of b43 that has the 
newest version of the RX header. In this case, fwcutter would be modified to use 
the revision level of the FW to decide the output directory. The openSUSE script 
would need to download and cut FW from both 5.100.138 and 5.10.144.3. The extra 
11 or 12 MB of download is a pain, but at least it is not 50-100 MB.

2. Change the openSUSE script to download and cut from 5.100.138 followed by an 
immediate download and cut from 5.10.144.3 with the output from both going to 
/lib/firmware/b43. Is there a clean separation between the devices that need the 
new firmware so that this would work? Of course, the openSUSE script still needs 
to download two drivers. I see no way around that.

I favor #1 for several reasons. It is distro agnostic. All the users need is 
access to the latest version of fwcutter. In addition, I'm sure that it will 
work for all versions of the driver and the hardware.

Any other ideas?

Larry
