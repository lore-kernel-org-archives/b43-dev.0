From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Thu, 28 Feb 2013 11:34:43 +0100
Subject: [PATCH] b43-asm: fix compile error: undefined reference to `yydebug'
Message-ID: <1362047683-4014-1-git-send-email-hauke@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

With bison 2.7 YYDEBUG will be set to 0 if it was not set, then #ifdef
YYDEBUG returns true, but bison 2.7 treets YYDEBUG 0 as not set.

This fixes the following error:
obj/main.o: In function `main':
main.c:(.text.startup+0xaf): undefined reference to `yydebug'
collect2: error: ld returned 1 exit status

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 assembler/Makefile |    2 +-
 assembler/main.c   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/assembler/Makefile b/assembler/Makefile
index 21c652d..e9ce6f6 100644
--- a/assembler/Makefile
+++ b/assembler/Makefile
@@ -30,7 +30,7 @@ BIN		= b43-asm.bin
 SRCS		= parser.c scanner.c main.c initvals.c util.c args.c
 
 # YACC related CFLAGS
-CFLAGS		+= -DYYSTYPE="void *" -DYYERROR_VERBOSE -DYYDEBUG -DYYENABLE_NLS=0 -DYYLTYPE_IS_TRIVIAL=0 -Wno-unused
+CFLAGS		+= -DYYSTYPE="void *" -DYYERROR_VERBOSE -DYYDEBUG=1 -DYYENABLE_NLS=0 -DYYLTYPE_IS_TRIVIAL=0 -Wno-unused
 
 .SUFFIXES:
 .PHONY: all install clean distclean
diff --git a/assembler/main.c b/assembler/main.c
index afca996..a62a15e 100644
--- a/assembler/main.c
+++ b/assembler/main.c
@@ -1260,7 +1260,7 @@ static void initialize(void)
 {
 	INIT_LIST_HEAD(&infile.sl);
 	INIT_LIST_HEAD(&infile.ivals);
-#ifdef YYDEBUG
+#if YYDEBUG
 	if (IS_INSANE_DEBUG)
 		yydebug = 1;
 	else
-- 
1.7.10.4
