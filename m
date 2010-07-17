From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 17 Jul 2010 21:15:33 +0200
Subject: My test for bcm4213
In-Reply-To: <AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>
References: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>
	<AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>
Message-ID: <AANLkTilGPP3KJirrrV6KAeJwVq_x80erKSxVUHNc_vFa@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/7/14 Kevyn-Alexandre Par? <kevyn.alexandre.pare@gmail.com>:
> export FIRMWARE_INSTALL_DIR="/lib/firmware"
> wget http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2
> tar xjf broadcom-wl-4.178.10.4.tar.bz2
> cd broadcom-wl-4.178.10.4/
> sudo ../b43-fwcutter-013/b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" wl_apsta.o
>
> see DMESG file attach for log.

What about
ls /lib/firmware
?

-- 
Rafa?
