From: strk <strk@keybit.net>
Date: Sun, 4 Apr 2010 13:34:30 +0200
Subject: BCM4303 and kill switch again
Message-ID: <20100404113430.GO63699@keybit.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,
dunno if you remember the problem I've reported long 
time ago about mini BCM4303 on my Asus L5800C laptop
breaking after an upgrade. Thread starts here [1].

Well, this mail is just to let you know that the ndsiwrapper
based driver works, so we can exclude hardware failures.

I'd be much happier using the free software driver of course
so if you can suggest something else to debug, I might do that.

Just a note: in order for the ndsiwrapper to function
I had to load it manually after removing the b44,b43legacy 
and finally ssb drivers. Loading the ssb driver *after*
ndiswrapper is ok, but doing before results in freezes.

[1] https://lists.berlios.de/pipermail/bcm43xx-dev/2010-February/006930.html

--strk; 

  ()   Free GIS & Flash consultant/developer
  /\   http://strk.keybit.net/services.html
