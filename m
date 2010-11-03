From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 03 Nov 2010 15:50:20 -0500
Subject: [PATCH] b43legacy: rfkill: use status register based on core
	revision (not PHY's)
In-Reply-To: <1288816572-12743-1-git-send-email-zajec5@gmail.com>
References: <1288816572-12743-1-git-send-email-zajec5@gmail.com>
Message-ID: <4CD1CB0C.6050502@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 11/03/2010 03:36 PM, Rafa? Mi?ecki wrote:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> With this patch we follow specs. I hope this will fix bug where radio was
> magically auto-turning on/off. Unfortunately I didn't get answer from reporter
> of that issue.
> 
> John: I suggest taking it for 2.6.38

ACK, both for the patch and the suggestion for the timing.

Larry
