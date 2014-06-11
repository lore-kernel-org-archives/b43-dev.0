From: Aaro Koskinen <aaro.koskinen@iki.fi>
Date: Thu, 12 Jun 2014 02:05:13 +0300
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
Message-ID: <20140611230513.GC913@drone.musicnaut.iki.fi>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Hi,

While testing the final 3.15, I noticed that "iwlist wlan0 scanning"
cannot find anything on my WRT54GL router anymore:

	# iwlist wlan0 scanning
	wlan0     No scan results

I bisected this to:

	3afc2167f60a327a2c1e1e2600ef209a3c2b75b7 is the first bad commit
	commit 3afc2167f60a327a2c1e1e2600ef209a3c2b75b7
	Author: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
	Date:   Tue Mar 4 16:50:13 2014 +0200

	    cfg80211/mac80211: ignore signal if the frame was heard on wrong channel

Test case: I simply test it after the boot as follows:

	modprobe b43
	ifconfig wlan0 up
	iwlist wlan0 scanning

Any ideas?

A.
