From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 04 May 2017 12:43:14 +0300
Subject: [PATCH] b43: Add missing MODULE_FIRMWARE()
In-Reply-To: <20170504092752.2422-1-tiwai@suse.de> (Takashi Iwai's message of
 "Thu, 4 May 2017 11:27:52 +0200")
References: <20170504092752.2422-1-tiwai@suse.de>
Message-ID: <87wp9xq7nx.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Takashi Iwai <tiwai@suse.de>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, zajec5@gmail.com

Takashi Iwai <tiwai@suse.de> writes:

> Some recent firmware entries were forgotten to be added via
> MODULE_FIRMWARE(), which may result in the non-functional state when
> the driver is loaded in initrd.
>
> Link: http://bugzilla.opensuse.org/show_bug.cgi?id=1037344
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

With recent you mean three years ago? ;) Some of these were added by
Rafal (CCed) in commit 15be8e89cdd99 and some in a60f99f75dd35.

I'll replace the word recent and add:

Fixes: 15be8e89cdd9 ("b43: add more bcma cores")

But as this is so old bug I'll queue this to 4.13.

-- 
Kalle Valo
