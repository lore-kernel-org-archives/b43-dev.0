From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 07 Dec 2010 14:00:35 -0600
Subject: [PATCH 1/4] b43: N-PHY: update init tables
In-Reply-To: <5001512.1291751372533.JavaMail.root@elwamui-cypress.atl.sa.earthlink.net>
References: <5001512.1291751372533.JavaMail.root@elwamui-cypress.atl.sa.earthlink.net>
Message-ID: <4CFE9263.4060108@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ikorot@earthlink.net
Cc: Hauke Mehrtens <hauke@hauke-m.de>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 12/07/2010 01:49 PM, ikorot at earthlink.net wrote:
>> One reason is that these tables changed from non-zero to zero values between
>> Broadcom driver 4.174.64.19 and 5.10.56.46. As they might change again, I think
>> we should retain the full version.
> 
> Is there a way to check for version of the driver?
> This way whoever uses old one won't be screwed...

That will not be a problem as no older version of b43 works at all with b43. To
help you understand this change, when the 4.174.64.19 Broadcom driver was
reverse-engineered, the tables had non-zero values. Rafel later compared the
trace dumps of b43 with the latest version of wl and found that the values are
now zero. When I rechecked driver 5.10.56.46, I found them to be zero there as
well and changed the specs.

Larry
