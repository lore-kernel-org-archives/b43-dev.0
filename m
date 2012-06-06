From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 06 Jun 2012 22:35:59 +0200
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
 n_queues))
In-Reply-To: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 (sfid-20120606_211036_695360_C0AB150F)
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 (sfid-20120606_211036_695360_C0AB150F)
Message-ID: <1339014959.4523.0.camel@jlt3.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andre Heider <a.heider@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Wed, 2012-06-06 at 21:10 +0200, Andre Heider wrote:
> Hi,
> 
> the wlan daughterboard on a nintendo wii stopped working with current master.
> Building from the v3.4 tag gives me a working device.
> 
> I bisected this to:
> 
> commit 3a25a8c8b75b430c4f4022918e26fa51d557ecde
> Author: Johannes Berg <johannes.berg@intel.com>
> 
> The hw queues fail the check in ieee80211_check_queues(). When I hack
> that function to always "return 0;" wlan works again.

There's a fix for this on the way since Larry had also reported the bug,
but I don't know where it is right now.

johannes
