From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 11 Jun 2014 18:53:40 -0500
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
In-Reply-To: <20140611233407.GA13823@us.netrek.org>
References: <20140611230513.GC913@drone.musicnaut.iki.fi>
 <20140611233407.GA13823@us.netrek.org>
Message-ID: <5398EC04.2090108@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Cameron <quozl@laptop.org>, Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 06/11/2014 06:34 PM, James Cameron wrote:
> Check that the driver reports the channel the probe was heard on?
>
> Another driver hit this and was fixed:
>
> 	at76c50x: fix scan does not work with latest mac80211
>

It would also be helpful to report what device you have as shown by 'lspci -nn'. 
This problem does not occur with my BCM4312 with PCI ID 14e4:4315.

Larry
