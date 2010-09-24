From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 24 Sep 2010 19:10:30 +0200
Subject: problem with b43
In-Reply-To: <20100924185551.e3c3b41c.cyrille@cbiot.fr>
References: <20100924185551.e3c3b41c.cyrille@cbiot.fr>
Message-ID: <AANLkTi=7C5W0r1h8YTqaRCM_NJ3SPJ66n=uxKkLe6bcg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/9/24 Cyrille <cyrille@cbiot.fr>:
> Installation method ( http://wireless.kernel.org/en/users/Drivers/b43#fw-b43-lp ) :
> You are using the b43 driver from linux-2.6.25 or newer
> export FIRMWARE_INSTALL_DIR="/lib/firmware"
> wget http://mirror2.openwrt.org/sources/broadcom-wl-4.150.10.5.tar.bz2
> tar xjf broadcom-wl-4.150.10.5.tar.bz2
> cd broadcom-wl-4.150.10.5/driver
> sudo ../../b43-fwcutter-013/b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" wl_apsta_mimo.o

This should lead to system having firmware in /lib/firmware/b43/. Make
sure you have "some" files in this directory.


> Seems work : ls /lib/firmware/b43-open/
> a0g0bsinitvals5.fw ? a0g1bsinitvals9.fw ? b0g0bsinitvals9.fw ?lp0bsinitvals15.fw ?n0initvals11.fw ?ucode5.fw
> a0g0bsinitvals9.fw ? a0g1initvals13.fw ? ?b0g0initvals13.fw ? lp0initvals13.fw ? ?pcm5.fw ? ? ? ? ?ucode9.fw
> a0g0initvals5.fw ? ? a0g1initvals5.fw ? ? b0g0initvals5.fw ? ?lp0initvals14.fw ? ?ucode11.fw
> a0g0initvals9.fw ? ? a0g1initvals9.fw ? ? b0g0initvals9.fw ? ?lp0initvals15.fw ? ?ucode13.fw
> a0g1bsinitvals13.fw ?b0g0bsinitvals13.fw ?lp0bsinitvals13.fw ?n0absinitvals11.fw ?ucode14.fw
> a0g1bsinitvals5.fw ? b0g0bsinitvals5.fw ? lp0bsinitvals14.fw ?n0bsinitvals11.fw ? ucode15.fw

b43-open is for open firmware, which does not support LP-PHY. You've
to use original, closed source, ugly-licensed firmware (placed in
/lib/firmware/b43/).


> But :
> dmesg
> b43-phy3 ERROR: You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware for this driver version. Please carefully read all instructions on this website.
> b43-phy4: Broadcom 4312 WLAN found (core revision 15)
> b43-phy4 debug: Found PHY: Analog 6, Type 5, Revision 1
> b43-phy4 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
> phy4: Selected rate control algorithm 'minstrel'
> Registered led device: b43-phy4::tx
> Registered led device: b43-phy4::rx
> Registered led device: b43-phy4::radio
> Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID: FW13 ]
> ssb0:0: Missing Free firmware
> b43-phy4 ERROR: Rejected non-Free firmware
> ssb0:0: Missing Free firmware
> b43-phy4 ERROR: Rejected non-Free firmware

Your distro doesn't allow non-free firmware. As I said, LP-PHY won't
work with open firmware. Refer to your's distro FAQ/forums/MLs to
learn how you can enable non-free firmware usage.


-- 
Rafa?
