From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 3 May 2011 21:03:33 +0200
Subject: LP-PHY and DMA errors: first success
Message-ID: <BANLkTi=TBfJrQ8YdmacmK5FKsUOAN=MaNQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey,

I wanted to share some great (however still early) news. For last 2
weeks I've been working on Juan's Lenovo machine to resolve DMA errors
on LP-PHY. I produced some patches, compare wl and b43 dumps, made
init in them almost identical... and nothing.

So I decided to check how much wl has to perform to make hardware
stable for b43. We disabled NetworkManager to don't up interface
automatically and just performed "modprobe wl; rmmod wl;". Thanksfully
I was enough to correctly init hardware! We got even more luck as wl
init appeared to be quite short, only about 200 lines of operations.

So I dumped wl init ops to wl.short.txt.b43 and decided to write
separate driver cloning that ops.

This way highly hackish "jc43" driver was created. I don't include
whole driver, just single file of it that's interesting for us. It's
attached scan.c.

Driver jc43 implements only about a half of wl init ops, but it
appears to be enough! Loading and unloading jc43 before using b43
seems to init hardware correctly :)

Now we just need to see what part of jc43 ops is important one and
implement it in ssb/b43 :)

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: wl.short.txt.b43
Type: application/octet-stream
Size: 7499 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110503/d926eb05/attachment.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: scan.c
Type: text/x-csrc
Size: 7330 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110503/d926eb05/attachment.bin>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: jc43.txt.b43
Type: application/octet-stream
Size: 2625 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110503/d926eb05/attachment-0001.obj>
