From: Arend van Spriel <arend@broadcom.com>
Date: Wed, 6 Jun 2012 13:51:53 +0200
Subject: [PATCH 2/8] bcma: add constants for chip ids
In-Reply-To: <1338933307-13446-3-git-send-email-hauke@hauke-m.de>
References: <1338933307-13446-1-git-send-email-hauke@hauke-m.de>
 <1338933307-13446-3-git-send-email-hauke@hauke-m.de>
Message-ID: <4FCF4459.8020806@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 06/05/2012 11:55 PM, Hauke Mehrtens wrote:
> The chip IDs are used all over bcma and no constants where defined.
> This patch adds the constants and makes bcma use them.

Acked-by: Arend van Spriel <arend@broadcom.com>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  drivers/bcma/driver_chipcommon_pmu.c |   81 +++++++++++++++++-----------------
>  drivers/bcma/driver_mips.c           |    8 ++--
>  drivers/bcma/driver_pci_host.c       |    8 ++--
>  drivers/bcma/sprom.c                 |   18 ++++----
>  include/linux/bcma/bcma.h            |   30 +++++++++++++
>  5 files changed, 90 insertions(+), 55 deletions(-)
