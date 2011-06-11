From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 12 Jun 2011 01:19:35 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <4167DD4F-0350-4EA1-98A6-CAC427989FED@ing.unibs.it>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
	<20110611223415.2f39adde@maggie>
	<BANLkTinMbZGO_JNabgZAnqATA2g7i8mbMA@mail.gmail.com>
	<BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
	<20110611234655.1825fe51@maggie>
	<4167DD4F-0350-4EA1-98A6-CAC427989FED@ing.unibs.it>
Message-ID: <20110612011935.486868ff@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 12 Jun 2011 00:55:58 +0200
francesco.gringoli at ing.unibs.it wrote:

> Anyway if you put some printk in b43_tx_work you will see that some TCP segments are discarded by it trying to send packets to the dma even if the rings are full. This prevents packets to queue up correctly in the qdisc, so shaping traffic through a b43 interface becomes really difficult.

So this doesn't sound like a b43 problem to me.
The driver disables the software queues, if the hardware queue is full.
If the stack continues to push packets to the driver while queues are stopped,
the only thing the driver can do is discard them.
