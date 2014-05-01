From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 1 May 2014 20:16:56 +0200
Subject: archlinux kernel 3.14.1-1 Broadcom BCM4312 firmware-file not found
In-Reply-To: <53620375.1050109@arcor.de>
References: <53620375.1050109@arcor.de>
Message-ID: <CACna6rznqFU+ha-Baa1NVCD=hnQmZXmPofAxThFFM-xXScUD9w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-05-01 10:19 GMT+02:00 Crazybob <crazybob2@arcor.de>:
> Apr 30 15:50:47 laptop kernel: b43-phy0 ERROR: Firmware file
> "b43-open/ucode15.fw" not found
> Apr 30 15:50:47 laptop kernel: b43-phy0 ERROR: You must go to
> http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and
> download the correct firmware for this driver version. Please carefully
> read all instructions on this website.
>
>
> The files are propper installed under /usr/lib/firmware/b43/

Could this be a matter of path? Maybe your newer kernel expects files
in /lib/firmware/b43/ (without /usr)?
