From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 22 May 2017 09:03:55 +0000 (UTC)
Subject: b43: Add missing MODULE_FIRMWARE()
In-Reply-To: <20170504092752.2422-1-tiwai@suse.de>
References: <20170504092752.2422-1-tiwai@suse.de>
Message-ID: <20170522090355.8BC9C60A0C@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Takashi Iwai <tiwai@suse.de> wrote:
> Some firmware entries were forgotten to be added via MODULE_FIRMWARE(), which
> may result in the non-functional state when the driver is loaded in initrd.
> 
> Link: http://bugzilla.opensuse.org/show_bug.cgi?id=1037344
> Fixes: 15be8e89cdd9 ("b43: add more bcma cores")
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

Patch applied to wireless-drivers-next.git, thanks.

3c89a72ad80c b43: Add missing MODULE_FIRMWARE()

-- 
https://patchwork.kernel.org/patch/9711225/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
