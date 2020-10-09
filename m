From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 09 Oct 2020 12:21:54 +0200
Subject: [PATCH net 000/117] net: avoid to remove module when its
 debugfs is being used
In-Reply-To: <CAMArcTUdGPH5a0RTUiNoLvuQtdnXHOCwStJ+gp_noaNEzgSA1Q@mail.gmail.com>
 (sfid-20201009_121527_238342_F5A29EF9)
References: <20201008155048.17679-1-ap420073@gmail.com>
 <1cbb69d83188424e99b2d2482848ae64@AcuMS.aculab.com>
 <62f6c2bd11ed8b25c1cd4462ebc6db870adc4229.camel@sipsolutions.net>
 <87v9fkgf4i.fsf@suse.de>
 <fd8aaf06b53f32eae7b5bdcec2f3ea9e1f419b1d.camel@sipsolutions.net>
 <CAMArcTUdGPH5a0RTUiNoLvuQtdnXHOCwStJ+gp_noaNEzgSA1Q@mail.gmail.com>
 (sfid-20201009_121527_238342_F5A29EF9)
Message-ID: <4a58caee3b6b8975f4ff632bf6d2a6673788157d.camel@sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Taehee Yoo <ap420073@gmail.com>
Cc: Nicolai Stange <nstange@suse.de>, David Laight <David.Laight@aculab.com>, "davem@davemloft.net" <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wil6210@qti.qualcomm.com" <wil6210@qti.qualcomm.com>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>

On Fri, 2020-10-09 at 19:15 +0900, Taehee Yoo wrote:
> 
> Okay, as you mentioned earlier in 001/117 patch thread,
> I will squash patches into per-driver/subsystem then send them as v2.

Give me a bit. I think I figured out a less intrusive way that at least
means we don't have to do it if the fops doesn't have ->release(), which
is the vast majority.

johannes
