From: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Date: Tue, 17 Jul 2012 22:33:42 +0200
Subject: [ath5k-devel] [PATCH 2/2] mac80211: Remove control.sta from struct
 ieee80211_tx_info and restructure tx-path
In-Reply-To: <1342530237.8139.5.camel@jlt3.sipsolutions.net>
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
 (sfid-20120713_205245_114771_49FF4AC7)
 <1342518290.7427.9.camel@jlt3.sipsolutions.net>
 <5005613F.1000004@net.t-labs.tu-berlin.de>
 <1342530237.8139.5.camel@jlt3.sipsolutions.net>
Message-ID: <5005CC26.6090408@net.t-labs.tu-berlin.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: coelho@ti.com, brcm80211-dev-list@broadcom.com, ath5k-devel@lists.ath5k.org, linux-wireless@vger.kernel.org, users@rt2x00.serialmonkey.com, ilw@linux.intel.com, ath9k-devel@lists.ath9k.org, b43-dev@lists.infradead.org, chunkeey@googlemail.com, dsd@gentoo.org, buytenh@wantstofly.org

Hi Johannes,


> No, I'm not going to play that game. Make sure it compiles on
> wireless-next.

Virtual box did the job and I found 3 drivers that somehow did not
complain in my OpenWRT build env... thx for not playing :)... v3 is out.

I used wireless-testing and not -next,as in -next the necessary patch
for mwlk8 is not included but in -testing. So my general question is on
which tree to develop, on testing or next?

Greetings Thomas



> 
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
