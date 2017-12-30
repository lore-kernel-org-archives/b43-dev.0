From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 30 Dec 2017 12:49:50 -0600
Subject: [PATCH] b43: Replace mdelay with msleep in
 b43_radio_2057_init_post
In-Reply-To: <1514632107-14698-1-git-send-email-baijiaju1990@gmail.com>
References: <1514632107-14698-1-git-send-email-baijiaju1990@gmail.com>
Message-ID: <906de5ba-b572-ada0-68ad-5e161ef6016e@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@gmail.com>, kvalo@codeaurora.org, colin.king@canonical.com, johannes.berg@intel.com, tiwai@suse.de, kstewart@linuxfoundation.org, gregkh@linuxfoundation.org, andrew.zaborowski@intel.com
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On 12/30/2017 05:08 AM, Jia-Ju Bai wrote:
> b43_radio_2057_init_post is not called in an interrupt handler
> nor holding a spinlock.
> The function mdelay in it can be replaced with msleep, to reduce busy wait.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>

checkpatch.pl reports the following warning for this patch:

WARNING: msleep < 20ms can sleep for up to 20ms; see 
Documentation/timers/timers-howto.txt
#26: FILE: drivers/net/wireless/broadcom/b43/phy_n.c:1034:
+       msleep(2);

total: 0 errors, 1 warnings, 0 checks, 8 lines checked

Have you tested to verify that a sleep as long as 20 ms will not cause problems? 
The referenced document suggests a usleep_range() call.

In general, delay changes should never be proposed without testing.

Larry
