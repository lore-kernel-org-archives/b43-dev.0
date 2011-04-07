From: Gregory Bellier <gregory.bellier@gmail.com>
Date: Thu, 07 Apr 2011 22:09:24 +0200
Subject: A small error in b43
Message-ID: <4D9E19F4.7070500@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dear list,

I would like to test the b43 driver for a BCM4322. I tried with 2.6.38.2 
and 2.6.39-rc2 but I'm stuck with a firmware error in dmesg :
[   75.922582] b43-phy0 ERROR: Firmware file "b43/ucode16_mimo.fw" not found
[   75.922587] b43-phy0 ERROR: Firmware file "b43-open/ucode16_mimo.fw" 
not found
[   75.922590] b43-phy0 ERROR: You must go to 
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and 
download the correct firmware for this driver version. Please carefully 
read all instructions on this website.

I have b43-fwcutter v13.

# b43-fwcutter -w /lib/firmware/ broadcom-wl-4.178.10.4/linux/wl_apsta.o
This file is recognised as:
   ID         :  FW15
   filename   :  wl_apsta.o
   version    :  478.104
   MD5        :  bb8537e3204a1ea5903fe3e66b5e2763
Extracting b43/ucode5.fw
Extracting b43/pcm5.fw
Extracting b43/b0g0bsinitvals5.fw
Extracting b43/a0g0bsinitvals5.fw
Extracting b43/b0g0initvals5.fw
Extracting b43/a0g1initvals5.fw
Extracting b43/a0g0initvals5.fw
Extracting b43/a0g1bsinitvals5.fw
Extracting b43/ucode9.fw
Extracting b43/a0g1initvals9.fw
Extracting b43/a0g0bsinitvals9.fw
Extracting b43/b0g0bsinitvals9.fw
Extracting b43/b0g0initvals9.fw
Extracting b43/a0g1bsinitvals9.fw
Extracting b43/a0g0initvals9.fw
Extracting b43/ucode11.fw
Extracting b43/n0bsinitvals11.fw
Extracting b43/n0absinitvals11.fw
Extracting b43/n0initvals11.fw
Extracting b43/ucode13.fw
Extracting b43/b0g0initvals13.fw
Extracting b43/a0g1bsinitvals13.fw
Extracting b43/a0g1initvals13.fw
Extracting b43/lp0bsinitvals13.fw
Extracting b43/b0g0bsinitvals13.fw
Extracting b43/lp0initvals13.fw
Extracting b43/ucode14.fw
Extracting b43/lp0initvals14.fw
Extracting b43/lp0bsinitvals14.fw
Extracting b43/ucode15.fw
Extracting b43/lp0bsinitvals15.fw
Extracting b43/lp0initvals15.fw
Extracting b43/ucode16.fw
Extracting b43/n0bsinitvals16.fw
Extracting b43/sslpn0initvals16.fw
Extracting b43/n0initvals16.fw
Extracting b43/lp0initvals16.fw
Extracting b43/sslpn0bsinitvals16.fw
Extracting b43/lp0bsinitvals16.fw

Did I miss something ? I promise I read carefully.

Sorry, I wrote this email in several times. I finally did a symlink in 
/lib/firmware/b43 : # sudo ln -s ucode16.fw ucode16_mimo.fw
And it worked like this.

Regards,
Gregory Bellier.
