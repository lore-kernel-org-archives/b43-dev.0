From: Theodore J. Allen <tjallen@hws.edu>
Date: Fri, 24 Jul 2020 17:22:38 -0400
Subject: Curious behavior (bug?) in b43 driver with BCM4331 and
 WPA2-Enterprise access
Message-ID: <8229543F-401B-42F2-A568-0D616141A5EA@hws.edu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dear b43 Maintainers,

I'm sorry to bother you. I'm using Slackware64 14.2 on a MacBook Pro 2012 (macbookpro9,2), which has a Broadcom BCM 4331 wifi card and I have a problem that may be a driver bug or perhaps a problem on the access points I'm trying to connect to. If you've seen my problem and know either how to work around it or that it can't be fixed, that would be very helpful. If I've found a bug, I'd be happy to help you fix it (though I'm not a programmer, let alone a kernal developer).

PROBLEM:

I can connect to my home WPA2-PSK network but I cannot connect to my employer's wifi, of which there are three different types. One is WPA2-Enterprise PEAP-MSCHAPv2, one is a WPA2-Enterprise PEAP-MSCHAPv2 eduroam access point, but the third is an unencrypted guest captive access point. None of them uses certificates. When I try to connect, dmesg shows that I manage to authenticate and then associate but then I get disconnected. dmesg shows wlan0: deauthenticating from c8:b5:ad:5d:c2:21 by local choice (Reason: 3=DEAUTH_LEAVING).

I can connect to all of my employer's wifi points with USB wifi dongles using either the zd1211rw or rt2800usb drivers (though, as with the built-in BCM4331 and the b43 driver, I can't connect with a dongle using the r8712u staging driver). Like the BCM4331 with the b43 driver, all USB wifi dongles I've used will connect to my WPA2-PSK home network.

This problem occurs with all kernels I've tried, most recently 4.4.230 and 5.4.52 and I have the same problem with the stock "huge" 4.4.14 kernel of Slackware64 14.2. I'm using the v6.30.163.46 Broadcom firmware, from a package built from SlackBuilds.org. 

OUTPUT:

The kernel configs and outputs of uname -a, lspci -vvn|grep 43 -A7, and dmesg for these kernels can be found at

http://people.hws.edu/tjallen/b43/4.4.230-4.config.txt
http://people.hws.edu/tjallen/b43/uname.txt
http://people.hws.edu/tjallen/b43/lspci.txt
http://people.hws.edu/tjallen/b43/dmesg.txt

http://people.hws.edu/tjallen/b43/5.4.52.config.txt
http://people.hws.edu/tjallen/b43/uname-5.4.52.txt
http://people.hws.edu/tjallen/b43/lspci-5.4.52.txt
http://people.hws.edu/tjallen/b43/dmesg-5.4.52.txt

If you're interested to look into this and you have any further tests you want me to make, I'd be happy to make them. 

    Ted Allen
