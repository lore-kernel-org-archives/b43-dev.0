From: James Cameron <quozl@laptop.org>
Date: Thu, 12 Jun 2014 09:34:07 +1000
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
In-Reply-To: <20140611230513.GC913@drone.musicnaut.iki.fi>
References: <20140611230513.GC913@drone.musicnaut.iki.fi>
Message-ID: <20140611233407.GA13823@us.netrek.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Check that the driver reports the channel the probe was heard on?

Another driver hit this and was fixed:

	at76c50x: fix scan does not work with latest mac80211

-- 
James Cameron
http://quozl.linux.org.au/
