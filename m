From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 19 May 2011 18:07:09 -0500
Subject: [PATCH] b43: Fix bogus compilation warning for phy_n
In-Reply-To: <BANLkTi=Mepan9vObhminTdAf9iaO6qmBqA@mail.gmail.com>
References: <4dd58d39.ev8WALmbdvCfJmAJ%Larry.Finger@lwfinger.net>	<BANLkTinDciqW2yJLpwKemnSM=8_1Jy3Fxw@mail.gmail.com>	<4DD595C9.105@lwfinger.net>	<BANLkTi=P-uCzunSyjf2ziX6BaCyq9Muj+g@mail.gmail.com>	<4DD59E2A.4070405@lwfinger.net>
	<BANLkTi=Mepan9vObhminTdAf9iaO6qmBqA@mail.gmail.com>
Message-ID: <4DD5A29D.2060609@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 05/19/2011 05:59 PM, Rafa? Mi?ecki wrote:
> W dniu 20 maja 2011 00:48 u?ytkownik Larry Finger
>> You are correct. I missed the level of indent in line 3256. What
>> initialization should be used for last?  It clearly needs to be set to
>> something.
>
> http://bcm-v4.sipsolutions.net/802.11/PHY/N/CalTxIqlo does not say
> anything about initial value. Guess it should be zero.

I checked the reference driver. It should be zero. The specs are updated.

Larry
