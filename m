From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 21 Dec 2010 12:34:33 +0100
Subject: [PATCH 2/4] b43: N-PHY: implement radio 2056 init steps
In-Reply-To: <1292928622-27651-2-git-send-email-zajec5@gmail.com>
	(sfid-20101221_115045_163491_FFFFFFFFB31FEB6B)
References: <1292928622-27651-1-git-send-email-zajec5@gmail.com>
	<1292928622-27651-2-git-send-email-zajec5@gmail.com>
	(sfid-20101221_115045_163491_FFFFFFFFB31FEB6B)
Message-ID: <1292931273.13493.2.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Tue, 2010-12-21 at 11:50 +0100, Rafa? Mi?ecki wrote: 
> +static void b43_radio_init2056_post(struct b43_wldev *dev)
> +{
> +	b43_radio_set(dev, B2056_SYN_COM_CTRL, 0xB);
> +	b43_radio_set(dev, B2056_SYN_COM_PU, 0x2);
> +	b43_radio_set(dev, B2056_SYN_COM_RESET, 0x2);
> +	mdelay(1);

Please don't use mdelay() ever. The driver is fully preemptible.
Use msleep() instead.

-- 
Greetings Michael.
