From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 28 Feb 2013 13:35:38 +0100
Subject: [PATCH] b43-asm: fix compile error: undefined reference to
 `yydebug'
In-Reply-To: <1362047683-4014-1-git-send-email-hauke@hauke-m.de>
References: <1362047683-4014-1-git-send-email-hauke@hauke-m.de>
Message-ID: <20130228133538.467b0570@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 28 Feb 2013 11:34:43 +0100
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> With bison 2.7 YYDEBUG will be set to 0 if it was not set, then #ifdef
> YYDEBUG returns true, but bison 2.7 treets YYDEBUG 0 as not set.

Applied.
Thanks for the patch.


Also note that b43-tools.git will be mirrored from now on at github:
https://github.com/mbuesch?tab=repositories
Just in case bues.ch is not reachable for whatever reason. The repositories
on bues.ch are still the main ones, though, and should be used in links, documentation, etc...

-- 
Michael
