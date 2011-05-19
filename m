From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 19 May 2011 17:48:10 -0500
Subject: [PATCH] b43: Fix bogus compilation warning for phy_n
In-Reply-To: <BANLkTi=P-uCzunSyjf2ziX6BaCyq9Muj+g@mail.gmail.com>
References: <4dd58d39.ev8WALmbdvCfJmAJ%Larry.Finger@lwfinger.net>	<BANLkTinDciqW2yJLpwKemnSM=8_1Jy3Fxw@mail.gmail.com>	<4DD595C9.105@lwfinger.net>
	<BANLkTi=P-uCzunSyjf2ziX6BaCyq9Muj+g@mail.gmail.com>
Message-ID: <4DD59E2A.4070405@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 05/19/2011 05:40 PM, Rafa? Mi?ecki wrote:
>
> I should have describe where I can see the problem.
>
> If error is other than 0 (it can be as the result of "error =
> b43_nphy_tx_tone(dev, freq, 250, true, false);"), then "last" won't be
> set in 3256. In 3300 we use "last", no matter what "error" is.

You are correct. I missed the level of indent in line 3256. What initialization 
should be used for last?  It clearly needs to be set to something.

John: Please drop my patch. I'll let Rafa? fix it.

Larry
