From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 19 Feb 2012 13:14:04 -0600
Subject: [PATCH 02/11] ssb: remove 5GHz antenna gain from sprom
In-Reply-To: <1329676345-15856-3-git-send-email-hauke@hauke-m.de>
References: <1329676345-15856-1-git-send-email-hauke@hauke-m.de>
 <1329676345-15856-3-git-send-email-hauke@hauke-m.de>
Message-ID: <4F4149FC.50900@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-mips@linux-mips.org, linux-wireless@vger.kernel.org, arend@broadcom.com, m@bues.ch

On 02/19/2012 12:32 PM, Hauke Mehrtens wrote:
> There is no 2.4 GHz or 5GHz antenna gain stored in sprom. The sprom
> just stores the gain values for antenna 1 and 2 or 1 to 4 for more
> recent sprom versions. On old devices antenna 2 was used for 5 GHz wifi.
>
> Signed-off-by: Hauke Mehrtens<hauke@hauke-m.de>
> ---
>   drivers/net/wireless/b43legacy/phy.c |    2 +-
>   drivers/ssb/pci.c                    |   40 ++++++++++++----------------------
>   drivers/ssb/pcmcia.c                 |   12 +++------
>   drivers/ssb/sdio.c                   |   12 +++------
>   include/linux/ssb/ssb.h              |    7 +-----
>   5 files changed, 24 insertions(+), 49 deletions(-)

After this patch, I get the warning

drivers/ssb/pci.c: In function ?sprom_extract_r123?:
drivers/ssb/pci.c:334:5: warning: unused variable ?gain? [-Wunused-variable]

I am still testing, but all other patches compile OK.

Larry
