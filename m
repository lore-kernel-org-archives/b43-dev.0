From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 12 Jun 2011 16:36:00 +0200
Subject: [RFC][PATCH] b43: do not try sending packets when ring can be full
In-Reply-To: <1307891513-6812-1-git-send-email-zajec5@gmail.com>
References: <1307891513-6812-1-git-send-email-zajec5@gmail.com>
Message-ID: <BANLkTin0H=c1ekTWbPHvA_O6CqGPVr=TYg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Cc: francesco.gringoli@ing.unibs.it, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

2011/6/12 Rafa? Mi?ecki <zajec5@gmail.com>:
> ---
> This prevents us from hitting "Packet after queue stopped", but still
> is not an optimal solution. We stop sending packets from queue to
> hardware if just a one ring is full. It may happen there are packets on
> the queue that want to be send to different ring (qos).
> ---

Does anyone have a better (real?) solution? Should we use multiple skb
queues, one for each ring?

We could do correct queuing in b43_op_tx then and b43_tx_work would
just check every ring (qos), one by one.

-- 
Rafa?
