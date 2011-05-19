From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 May 2011 00:59:09 +0200
Subject: [PATCH] b43: Fix bogus compilation warning for phy_n
In-Reply-To: <4DD59E2A.4070405@lwfinger.net>
References: <4dd58d39.ev8WALmbdvCfJmAJ%Larry.Finger@lwfinger.net>
	<BANLkTinDciqW2yJLpwKemnSM=8_1Jy3Fxw@mail.gmail.com>
	<4DD595C9.105@lwfinger.net>
	<BANLkTi=P-uCzunSyjf2ziX6BaCyq9Muj+g@mail.gmail.com>
	<4DD59E2A.4070405@lwfinger.net>
Message-ID: <BANLkTi=Mepan9vObhminTdAf9iaO6qmBqA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

W dniu 20 maja 2011 00:48 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 05/19/2011 05:40 PM, Rafa? Mi?ecki wrote:
>>
>> I should have describe where I can see the problem.
>>
>> If error is other than 0 (it can be as the result of "error =
>> b43_nphy_tx_tone(dev, freq, 250, true, false);"), then "last" won't be
>> set in 3256. In 3300 we use "last", no matter what "error" is.
>
> You are correct. I missed the level of indent in line 3256. What
> initialization should be used for last? ?It clearly needs to be set to
> something.

http://bcm-v4.sipsolutions.net/802.11/PHY/N/CalTxIqlo does not say
anything about initial value. Guess it should be zero.

-- 
Rafa?
