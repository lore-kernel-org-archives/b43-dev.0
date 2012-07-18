From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 18 Jul 2012 08:48:30 +0200
Subject: [ath5k-devel] [PATCH 2/2] mac80211: Remove control.sta from
 struct ieee80211_tx_info and restructure tx-path
In-Reply-To: <5005CC26.6090408@net.t-labs.tu-berlin.de>
References: <1342205545-45382-1-git-send-email-thomas@net.t-labs.tu-berlin.de>
 <1342205545-45382-3-git-send-email-thomas@net.t-labs.tu-berlin.de>
 (sfid-20120713_205245_114771_49FF4AC7)
 <1342518290.7427.9.camel@jlt3.sipsolutions.net>
 <5005613F.1000004@net.t-labs.tu-berlin.de>
 <1342530237.8139.5.camel@jlt3.sipsolutions.net>
 <5005CC26.6090408@net.t-labs.tu-berlin.de>
Message-ID: <1342594110.5310.2.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Huehn <thomas@net.t-labs.tu-berlin.de>
Cc: coelho@ti.com, brcm80211-dev-list@broadcom.com, ath5k-devel@lists.ath5k.org, linux-wireless@vger.kernel.org, users@rt2x00.serialmonkey.com, ilw@linux.intel.com, ath9k-devel@lists.ath9k.org, b43-dev@lists.infradead.org, chunkeey@googlemail.com, dsd@gentoo.org, buytenh@wantstofly.org


> Virtual box did the job and I found 3 drivers that somehow did not
> complain in my OpenWRT build env... thx for not playing :)... v3 is out.

See, that's why I don't want to play the game -- I could've gone back
and forth with you for like a week over multiple compile failures :-)

> I used wireless-testing and not -next,as in -next the necessary patch
> for mwlk8 is not included but in -testing. So my general question is on
> which tree to develop, on testing or next?

Well, they don't usually diverge much. I guess I can merge in
wireless-next.git and wireless.git into mac80211-next.git if there's a
problem applying. I have meetings now, will try to apply it later.

johannes
