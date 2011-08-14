From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 20:21:52 +0200
Subject: Questions about firmware
In-Reply-To: <4E480D1B.2000805@lwfinger.net>
References: <4E480D1B.2000805@lwfinger.net>
Message-ID: <CACna6rzM+bUSofoddLkX=m93on5JLNj2JFuBz8Lf_9a8QkcHLA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 19:59 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> As I understand it, one needs to extract firmware from the 5.100.138 driver
> to handle an HT PHY; however, my experience is that the older FW is also
> converted to the new RX descriptors, and that using it with an unmodified
> driver will fail.

File xmit.h gives some hint. Following firmwares use new RX/TX headers:
/* Tested with 598.314, 644.1001 and 666.2 */

Two drivers I've found [0] contain firmware for HT-PHY cards:
broadcom-wl-5.100.104.2.tar.bz2 (FW: 644.1001)
broadcom-wl-5.100.138.tar.bz2 (FW: 666.2)
(I don't host any driver containing firmware 598.314)


> As I am in the process of updating the install_bcm43xx_firmware script for
> openSUSE, we need to decide how to handle the situation. Thus far, I have
> two possible solutions:
>
> 1. Change the default firmware directory for any version of b43 that has the
> newest version of the RX header. In this case, fwcutter would be modified to
> use the revision level of the FW to decide the output directory. The
> openSUSE script would need to download and cut FW from both 5.100.138 and
> 5.10.144.3. The extra 11 or 12 MB of download is a pain, but at least it is
> not 50-100 MB.
>
> 2. Change the openSUSE script to download and cut from 5.100.138 followed by
> an immediate download and cut from 5.10.144.3 with the output from both
> going to /lib/firmware/b43. Is there a clean separation between the devices
> that need the new firmware so that this would work? Of course, the openSUSE
> script still needs to download two drivers. I see no way around that.
>
> I favor #1 for several reasons. It is distro agnostic. All the users need is
> access to the latest version of fwcutter. In addition, I'm sure that it will
> work for all versions of the driver and the hardware.
>
> Any other ideas?

For wiki [1] readers we will need to write some short instruction.

For distribution I propose something easier. If distro is using 3.1
kernel - provide script using older firmware. If distro is using 3.2
or newer - extract firmware from newer driver.


[0] http://broadcom.zajec.net/
[1] http://wireless.kernel.org/en/users/Drivers/b43

-- 
Rafa?
