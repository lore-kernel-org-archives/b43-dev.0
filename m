From: John W. Linville <linville@tuxdriver.com>
Date: Mon, 26 Jul 2010 11:23:23 -0400
Subject: [PATCH] fwcutter: add COPYING file
Message-ID: <1280157803-5560-1-git-send-email-linville@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Some of the files in the fwcutter directory have no explicit license
text.  They should at least be covered by a COPYING file or similar.

Signed-off-by: John W. Linville <linville@tuxdriver.com>
---
I dunno if this is the most appropriate copyright text.  Feel free to
modify as appropriate!

 fwcutter/COPYING |   32 ++++++++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 fwcutter/COPYING

diff --git a/fwcutter/COPYING b/fwcutter/COPYING
new file mode 100644
index 0000000..13959b2
--- /dev/null
+++ b/fwcutter/COPYING
@@ -0,0 +1,32 @@
+Unless otherwise indicated, the following notice applies to all files in
+this package:
+
+/*
+ * Copyright (c) 2005 Martin Langer <martin-langer@gmx.de>,
+ *               2005-2007 Michael Buesch <mb@bu3sch.de>
+ *		 2005 Alex Beregszaszi
+ *		 2007 Johannes Berg <johannes@sipsolutions.net>
+ *
+ *   Redistribution and use in source and binary forms, with or without
+ *   modification, are permitted provided that the following conditions
+ *   are met:
+ *
+ *     1. Redistributions of source code must retain the above copyright
+ *        notice, this list of conditions and the following disclaimer.
+ *     2. Redistributions in binary form must reproduce the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer in the documentation and/or other materials provided
+ *        with the distribution.
+ *
+ *   THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
+ *   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ *   OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ *   DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR ANY
+ *   DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ *   DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
+ *   GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+ *   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
+ *   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
+ *   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
+ *   EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
-- 
1.7.1.1
