From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 16 Dec 2011 19:55:40 +0100
Subject: [RFC] b43: Rearranging functions in phy_n.c
Message-ID: <CACna6rxEyGbxq813UW8RvzaysCd0jCawYZ0G6eN7XiAQOykTig@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>
Cc: linux-wireless@vger.kernel.org

Hey,

The order of functions in phy_n.c is really messy. I wanted to collect
related functions, fix order (dependency) and name goups via comments.

Is there anything I should know? Patches are going to be huge, tons of
lines moved around the phy_n.c :(

Are there any objections against that? Any suggestions if I should
post one huge patch or few smaller ones?

-- 
Rafa?
