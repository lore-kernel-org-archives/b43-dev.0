From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 28 Feb 2013 09:01:25 +0100
Subject: b43-tools/main.c not compiling with undefined reference to `yydebug'
Message-ID: <CACna6rxZixdUqzBxyJPpKQoU6kTFKTDJbS__ZJyvpBQy4ypFww@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey Michael,

I wanted to compile b43-tools today and it failed for me. Log:

> obj/main.o: In function `main':
> main.c:(.text.startup+0x85): undefined reference to `yydebug'
> collect2: error: ld returned 1 exit status

I've started Googling and it seems to be reported 1,5h ago on OpenWrt:
https://dev.openwrt.org/ticket/13093

It's reported to be a problem related to the new version of bison.

Could you take a look at this, please?

-- 
Rafa?
