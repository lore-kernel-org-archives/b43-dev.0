From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 08 Oct 2020 18:06:56 +0200
Subject: [PATCH net 001/117] mac80211: set .owner to THIS_MODULE in
 debugfs_netdev.c
In-Reply-To: <20201008155209.18025-1-ap420073@gmail.com>
 (sfid-20201008_175239_508186_DB541C11)
References: <20201008155209.18025-1-ap420073@gmail.com>
 (sfid-20201008_175239_508186_DB541C11)
Message-ID: <e385f0c4d37812d9e69369645082baf4a352b6c3.camel@sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Taehee Yoo <ap420073@gmail.com>, davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org
Cc: linux-wireless@vger.kernel.org, wil6210@qti.qualcomm.com, b43-dev@lists.infradead.org, linux-bluetooth@vger.kernel.org

On Thu, 2020-10-08 at 15:50 +0000, Taehee Yoo wrote:
> If THIS_MODULE is not set, the module would be removed while debugfs is
> being used.
> It eventually makes kernel panic.
> 
Wow, 117 practically identical patches? No thanks ...

Can you merge the ones that belong to a single driver?

net/mac80211/ -> mac80211
net/wireless/ -> cfg80211

etc.

I don't think we need more than one patch for each driver/subsystem.

johannes
