From: Tyler Kocheran <rfkrocktk@gmail.com>
Date: Thu, 29 Dec 2011 20:45:25 -0800
Subject: 4331 and Bluetooth Bug
Message-ID: <CAPTk+sbaZC2DUUAUcKk73zG3sc2duLyOXKMCaOQjUt4Lz72cyg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,
I'm currently running on a MacBook Pro 8,3, 11.10-amd64 Ubuntu, kernel
3.0.0-14-generic.

I was able to use this
guide<http://homepage.uibk.ac.at/~c705283/archives/2011/09/04/linux_support_for_broadcom_4331_wireless_chip_macbook_pro_81/index.html>
to
compile and use the B43 driver for my 4331 WiFi card. WiFi generally works
great, though I'll have times when it'll appear connected to the network
but isn't able to get any internet access, but that's not what this issue
is about.

The main issue is that I've determined that the driver/card severely
interferes with and inhibits in many cases the use of Bluetooth. While b43
is loaded, I can't find any Bluetooth device with hcitool scan or hidd
--search, but when I rmmod it, I'm able to find my devices. If you'd like
me to demonstrate, I'd be happy to.

The main problems are as follows:


   1. Bluetooth is completely unable to detect devices for pairing when b43
   is running in the kernel, no exceptions.
   2. More often than not, my Motorola S305 headphones connect to my
   computer, then disconnect, then reconnect, then disconnect, all without
   entering A2DP or HFS mode. My headphones never actually get connected in a
   way that's usable most of the time.
   3. Audio playback and high-bandwidth uses of Bluetooth are terribly
   inconsistent, choppy, and sounds terrible.

All of these problem go away if I rmmod b43.

So, going forward I'd like to help in any way I can to get this issue
resolved. Can anyone show me how I can completely uninstall b43 and start
again from scratch? Are these issues known? What version of broadcom-wl,
compat-wireless, and b43-fwcutter should I be compiling against?

uname -a <http://paste.ubuntu.com/786438/>
lspci -vvn | grep 43 -A7 <http://paste.ubuntu.com/786439/>
dmesg <http://paste.ubuntu.com/786440/>

Thanks,
 - TK
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111229/4629283b/attachment.html>
