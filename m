From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 27 Jul 2012 09:26:57 +0200
Subject: [PATCH v6] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <5011A250.4010500@net.t-labs.tu-berlin.de>
References: <1343318961-46933-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1343319453.4477.2.camel@jlt3.sipsolutions.net>
 <1343319579.4477.3.camel@jlt3.sipsolutions.net>
 <501170F2.3050300@net.t-labs.tu-berlin.de>
 <CA+XVXfegYYwc=esyZmJHu1tEqQKcq+h+MnSyp9dXiiwqroG3tw@mail.gmail.com>
 <CA+XVXfcrb9=XQauvbPzw2t_jMoQisrh5aSB1qwpLxXsKJKy2Yg@mail.gmail.com>
 <CA+XVXfe1uomu4XYD33==bFFozbo9k4mkqC1PE1ORnvVN_1PeTg@mail.gmail.com>
 <5011A250.4010500@net.t-labs.tu-berlin.de>
Message-ID: <1343374017.4449.0.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: Arik Nemtsov <arik@wizery.com>, nbd@openwrt.org, coelho@ti.com, brcm80211-dev-list@broadcom.com, ath5k-devel@lists.ath5k.org, linux-wireless@vger.kernel.org, users@rt2x00.serialmonkey.com, ilw@linux.intel.com, ath9k-devel@lists.ath9k.org, b43-dev@lists.infradead.org, chunkeey@googlemail.com, dsd@gentoo.org, buytenh@wantstofly.org

On Thu, 2012-07-26 at 22:02 +0200, Thomas Huehn wrote:

> > Better to just wait some time. I wrote up something to make it much
> > easier for you. Waiting for some internal review before sending it up.
> > 
> 
> Thx for helping out here, I ws allready checking into what kind of
> struct I can put the sta pointer. But if you have a better solution in
> mind, I wait until my v7.

When you do, please remove the last two hunks from your patch that are
spurious indentation changes in tx.c

johannes
