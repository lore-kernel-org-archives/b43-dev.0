From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 10 Jun 2012 21:34:52 +0200
Subject: [PATCH 7/8] bcma: add bcma_pmu_spuravoid_pllupdate()
In-Reply-To: <CACna6rwbS9YTM7gqX14T71Lart2HbUsFo4su8h6HEhv91C_9XA@mail.gmail.com>
References: <1338933307-13446-1-git-send-email-hauke@hauke-m.de>
 <1338933307-13446-8-git-send-email-hauke@hauke-m.de>
 <CACna6rwbS9YTM7gqX14T71Lart2HbUsFo4su8h6HEhv91C_9XA@mail.gmail.com>
Message-ID: <4FD4F6DC.2080603@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linville@tuxdriver.com, b43-dev@lists.infradead.org, arend@broadcom.com, linux-wireless@vger.kernel.org

On 06/10/2012 06:53 PM, Rafa? Mi?ecki wrote:
> 2012/6/5 Hauke Mehrtens <hauke@hauke-m.de>:
>> This function is needed by brcmsmac. This code is based on code from
>> the Broadcom SDK.
> 
> This is already implemented in b43/phy_n.c:
> 
> /* http://bcm-v4.sipsolutions.net/802.11/PmuSpurAvoid */
> static void b43_nphy_pmu_spur_avoid(struct b43_wldev *dev, bool avoid)
> 
> I guess we should replace b43 code with a call to introduced function.
> 

Thanks, I looked into b43 but not long enough to find this function. I
will also create a patch replacing this function in b43.

Hauke
