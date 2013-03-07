From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 7 Mar 2013 19:55:05 +0100
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <5138D7D7.5020204@lwfinger.net>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <5138D7D7.5020204@lwfinger.net>
Message-ID: <CACna6rxofcrBiUGCt6yRMWYK7hQzop0iKeSrBxXwutCQDZ9T2g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/3/7 Larry Finger <Larry.Finger@lwfinger.net>:
> On 03/07/2013 09:47 AM, Rafa? Mi?ecki wrote:
>>
>> After spotting a lot of N-PHY-similar functions in
>> BCM4331 dump of MMIO ops - split into names parts
>> I was able to finally improve HT-PHY code.
>>
>> It now sets TX basically, I can finally talk with devices that are few
>> meters away, not just few centimetres. It's a little patch bomb, sorry
>> for that, but I wasn't sure if my code is correct until it was complete
>> and started working.
>>
>> Rafa? Mi?ecki (13):
>>    b43: HT-PHY: rename AFE defines
>>    b43: HT-PHY: add classifier control function
>>    b43: HT-PHY: move TX fix to the separated function
>>    b43: HT-PHY: implement spurious tone avoidance
>>    b43: HT-PHY: implement MAC reclocking
>>    b43: HT-PHY: implement CCA reset
>>    b43: HT-PHY: implement PA override
>>    b43: HT-PHY: implement controlling TX power control
>>    b43: HT-PHY: implement stopping sample tone playback
>>    b43: HT-PHY: implement playing sample tone
>>    b43: HT-PHY: implement RSSI polling
>>    b43: HT-PHY: setup TX power control
>>    b43: HT-PHY: enable basic TX power setup
>>
>>   drivers/net/wireless/b43/phy_ht.c |  603
>> +++++++++++++++++++++++++++++++++----
>>   drivers/net/wireless/b43/phy_ht.h |   77 ++++-
>>   2 files changed, 613 insertions(+), 67 deletions(-)
>
>
> What tree is used for these patches? Numbers 1-7 applied with offsets, and
> some fuzz. Number 8 failed, and I quit trying there. I am using
> wireless-testing that was a fresh pull yesterday after John rebased it.

I've just checkouted origin/master again, to make sure everything is
clean, and patches applied fine. Please make sure you're using latest
wireless-testing like a
http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-testing.git/commit/?id=12c18c7a3d8f20366424834b20be40f7f3a9e2c2

-- 
Rafa?
