From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= <kevyn.alexandre.pare@gmail.com>
Date: Sat, 17 Jul 2010 22:09:15 -0400
Subject: My test for bcm4213
In-Reply-To: <4C420119.4090109@lwfinger.net>
References: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>
	<AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>
	<4C420119.4090109@lwfinger.net>
Message-ID: <AANLkTimFQFfmMlxKpmRUv8ZR_fDoZr7Ld84jOrIE1oVZ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Next time will post with attachment .txt or directly in the email.

I was just reporting that it was working properly except the  sudo
apt-get install b43-fwcutter didn't work. Because it was installing
the wrong version & I explain how I did it (just installing for src).

I also check the archive and knew about the DMA error sorry for not
been clear enough....

I'm on:
uname -a
Linux vostro 2.6.35-rc5+ #2 SMP Thu Jul 15 14:05:34 EDT 2010 x86_64 GNU/Linux

It's working fine.

Do you still have things to do on it if so what and where is your todo
list?! I imagnie that b43 no because I'm looking at the
http://linuxwireless.org/en/users/Drivers     and all is set to yes...

Regards

kap

On Sat, Jul 17, 2010 at 3:14 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 07/14/2010 08:15 AM, Kevyn-Alexandre Par? wrote:
>>
>> Hi,
>>
>> Here my test for bcm4213
>>
>> vostro at vostro:~$ lspci -n | grep 14e4
>> 06:00.0 0280: 14e4:4315 (rev 01)
>>
>> vostro at vostro:~$ uname -a
>> Linux vostro 2.6.35-rc3-wl+ #1 SMP Sat Jul 3 20:37:05 EDT 2010 x86_64
>> GNU/Linux
>>
>> On top ubuntu 10.04
>>
>> After booting error happen and I fallow instruction, see DMESG-WIRELESS
>
> Please post the error messages in-line. It is a real pain to have to create
> a file to see the errors. If you cannot do that, then name the attached file
> xxxx.txt. That way I can see it inline.
>
>> didn't work with sudo apt-get install b43-fwcutter // it was downloading
>> on 12 that was failling... didn't investigate more..
>>
>> wget http://bu3sch.de/b43/fwcutter/b43-fwcutter-013.tar.bz2
>> tar xjvf b43-fwcutter-013.tar.bz2
>> cd b43-fwcutter-013/
>> make
>> cd ..
>>
>> export FIRMWARE_INSTALL_DIR="/lib/firmware"
>> wget http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2
>> tar xjf broadcom-wl-4.178.10.4.tar.bz2
>> cd broadcom-wl-4.178.10.4/
>> sudo ../b43-fwcutter-013/b43-fwcutter -w "$FIRMWARE_INSTALL_DIR"
>> wl_apsta.o
>>
>> see DMESG file attach for log.
>>
>> next step try it with last 2.6.35-rc4 or later...
>
> It will not help. For all the others reading this list, the error message is
> the old, familiar
>
> b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
> 0x00000000, 0x00000000, 0x00000000
> b43-phy0 ERROR: This device does not support DMA on your system. It will now
> be switched to PIO.
> b43-phy0: Controller RESET (DMA error) ...
>
> If you had done any searching at all, you would have seen this error
> discussed many, many times. We do not yet have a fix. If you load b43 with
> the options "pio=1 qos=0 nohwcrypt=1" b43 will then work. No I do not know
> how to input those options on your system.
>
>
> Larry
>
