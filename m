From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Mar 2013 00:19:08 +0100
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <1363171283.32099.343.camel@i7.infradead.org>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1363171283.32099.343.camel@i7.infradead.org>
Message-ID: <CACna6ryEBFqg1ORRcbob+FWcFGiMt9fOfQAkAov9wmoR8M4Fxw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2@infradead.org>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2013/3/13 David Woodhouse <dwmw2@infradead.org>:
> On Thu, 2013-03-07 at 16:47 +0100, Rafa? Mi?ecki wrote:
>> After spotting a lot of N-PHY-similar functions in
>> BCM4331 dump of MMIO ops - split into names parts
>> I was able to finally improve HT-PHY code.
>>
>> It now sets TX basically, I can finally talk with devices that are few
>> meters away, not just few centimetres. It's a little patch bomb, sorry
>> for that, but I wasn't sure if my code is correct until it was complete
>> and started working.
>
> If you have a git tree I can pull this from, I'd be happy to give it
> some testing...

You can try wireless-testing:
http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-testing.git

-- 
Rafa?
