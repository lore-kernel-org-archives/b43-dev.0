From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 Jun 2012 15:04:46 +0200
Subject: Mint tells me that I must download firmware
In-Reply-To: <4FDDCF67.6000608@comcast.net>
References: <4FDDCF67.6000608@comcast.net>
Message-ID: <CACna6ryMvuED=YQ-FPVxCcb3JzTK+tdJqXpKUrnN1T52RYVBbA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/6/17 Greg Roth <gregoryroth@comcast.net>:
> Broadcom's website is no help and the lspci -vvnn command comes back blank.
> ?I'm following the instructions on this site:
> http://wireless.kernel.org/en/users/Drivers/b43#switch_b43
>
> I can't tell if it's a driver or firmware or what is broken, and I hope you
> can help me. ?This netbook will be for a young lady whose father died of a
> brain tumor.
>
>
> and here are the results of the 3 utilities ?required.
>
> mint at mint ~ $ uname -a
> Linux mint 2.6.32-21-generic #32-Ubuntu SMP Fri Apr 16 08:10:02 UTC 2010
> i686 GNU/Linux

Please see:
http://wireless.kernel.org/en/users/Drivers/b43#Other_distributions_not_mentioned_above

Your kernel is 2.6.32, so you need to follow
1) Install b43-fwcutter
2) If you are using the b43 driver from older kernel

So the steps for you are (quoting from wiki):

wget http://bues.ch/b43/fwcutter/b43-fwcutter-015.tar.bz2
tar xjf b43-fwcutter-015.tar.bz2
cd b43-fwcutter-015
make
sudo make install
cd ..

export FIRMWARE_INSTALL_DIR="/lib/firmware"
wget http://mirror2.openwrt.org/sources/broadcom-wl-5.10.56.27.3_mipsel.tar.bz2
tar xjf broadcom-wl-5.10.56.27.3_mipsel.tar.bz2
sudo b43-fwcutter -w "$FIRMWARE_INSTALL_DIR"
broadcom-wl-5.10.56.27.3/driver/wl_apsta/wl_prebuilt.o

(Please refer to wiki if my dumb GMail will break lines)

-- 
Rafa?
