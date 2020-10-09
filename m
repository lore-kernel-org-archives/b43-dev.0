From: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 09 Oct 2020 18:09:10 +0300
Subject: [PATCH net 001/117] mac80211: set .owner to THIS_MODULE in
 debugfs_netdev.c
In-Reply-To: <e385f0c4d37812d9e69369645082baf4a352b6c3.camel@sipsolutions.net>
 (Johannes Berg's message of "Thu, 08 Oct 2020 18:06:56 +0200")
References: <20201008155209.18025-1-ap420073@gmail.com>
 <e385f0c4d37812d9e69369645082baf4a352b6c3.camel@sipsolutions.net>
Message-ID: <87mu0vsag9.fsf@tynnyri.adurom.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Taehee Yoo <ap420073@gmail.com>, davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

Johannes Berg <johannes@sipsolutions.net> writes:

> On Thu, 2020-10-08 at 15:50 +0000, Taehee Yoo wrote:
>> If THIS_MODULE is not set, the module would be removed while debugfs is
>> being used.
>> It eventually makes kernel panic.
>> 
> Wow, 117 practically identical patches? No thanks ...
>
> Can you merge the ones that belong to a single driver?
>
> net/mac80211/ -> mac80211
> net/wireless/ -> cfg80211
>
> etc.
>
> I don't think we need more than one patch for each driver/subsystem.

Yes, one patch per driver is much better. And never send 100 patches in
one go, I will automatically drop these even without looking.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
