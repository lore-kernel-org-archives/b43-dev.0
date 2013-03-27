From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 27 Mar 2013 13:50:48 -0500
Subject: [PATCH] b43: remove warning for LP-PHY with sprom < 8
In-Reply-To: <51533C70.1070904@hauke-m.de>
References: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
 <20130323174732.GE2873@Vault13> <51533C70.1070904@hauke-m.de>
Message-ID: <51533F88.5050001@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/27/2013 01:37 PM, Hauke Mehrtens wrote:

> The Asus WL-520GU just has very little memory I think that's the
> problem. This patch just removes the warning, but I do not think it
> will improve anything.

One thing that will make it worse is:

commit ccae0e50c16a7f7adb029c169147400d1ce9f703
Author: Larry Finger <Larry.Finger@lwfinger.net>
Date:   Sun Feb 17 17:01:20 2013 +0000

     b43: Increase number of RX DMA slots

That patch increases the memory usage of b43 by quite a bit and may push your 
router over the edge.

Larry
