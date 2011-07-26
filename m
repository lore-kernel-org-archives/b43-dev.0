From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Jul 2011 10:57:55 -0500
Subject: [PATCH 1/2] b43legacy: report core number
In-Reply-To: <20110726153648.24611.49190.stgit@mj.roinet.com>
References: <20110726153648.24611.49190.stgit@mj.roinet.com>
Message-ID: <4E2EE403.5090207@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>

On 07/26/2011 10:36 AM, Pavel Roskin wrote:
> Signed-off-by: Pavel Roskin<proski@gnu.org>
> ---
>   0 files changed, 0 insertions(+), 0 deletions(-)

Very informative diffstat! :)

>
> diff --git a/drivers/net/wireless/b43legacy/main.c b/drivers/net/wireless/b43legacy/main.c
> index ffa4671..224991a 100644
> --- a/drivers/net/wireless/b43legacy/main.c
> +++ b/drivers/net/wireless/b43legacy/main.c
> @@ -3785,7 +3785,8 @@ static int b43legacy_wireless_init(struct ssb_device *dev)
>   	INIT_WORK(&wl->beacon_update_trigger, b43legacy_beacon_update_trigger_work);
>
>   	ssb_set_devtypedata(dev, wl);
> -	b43legacyinfo(wl, "Broadcom %04X WLAN found\n", dev->bus->chip_id);
> +	b43legacyinfo(wl, "Broadcom %04X WLAN found (core revision %u)\n",
> +		      dev->bus->chip_id, dev->id.revision);
>   	err = 0;
>   out:
>   	return err;

ACKed-by: Larry Finger <Larry.Finger@lwfinger.net>
