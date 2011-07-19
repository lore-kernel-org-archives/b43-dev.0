From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 19 Jul 2011 17:53:14 -0500
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <1311113542-2540-2-git-send-email-zajec5@gmail.com>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
Message-ID: <4E260ADA.6060408@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, Pavel Roskin <proski@gnu.org>

On 07/19/2011 05:12 PM, Rafa? Mi?ecki wrote:
> Routing bits are always placed in 0xC0000000, there is no any special
> bit shifting for 64-bit DMA. We just workaround wrong value (passed by
> ssb) in this way. Replace that with just a one workaround and comment
> it. Real fix for this requires testing with all ssb drivers.

If you wish to supply the real patch, I can test b43legacy.

Larry
