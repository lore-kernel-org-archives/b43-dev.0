From: Alfred B. M. Cordero <otto-pilot@hushmail.com>
Date: Fri, 29 Apr 2011 18:27:06 -0700
Subject: b43 -- 4312 and built-in/static kernel
Message-ID: <20110430012706.7ABA9E671D@smtp.hushmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I am building a static kernel. I have gotten the DVB card working 
by adding
the .fw to linux/firmware and so I am doing the same thing with the 
4312.
The kernel builds fine, the 4312 is found and seems fine.
dmesg reports the card, lspci shows it and so does ifconfig -a.

ip link set dev wlan0 up pretty much hangs and none of the iw* 
commands
work.


The problem may be that at the request_firmware stage there is a 
mismatch
between what I've compiled into the kernel and what 
request_firmware is
requesting. 

I have ucode5.fw, b0g0bsinit and b0g0init in linux/firmware and
added those to .config

If anyone knows how to narrow this down it would be great.
