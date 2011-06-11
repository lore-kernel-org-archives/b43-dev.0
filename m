From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sun, 12 Jun 2011 00:55:58 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <20110611234655.1825fe51@maggie>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
	<20110611223415.2f39adde@maggie>
	<BANLkTinMbZGO_JNabgZAnqATA2g7i8mbMA@mail.gmail.com>
	<BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
	<20110611234655.1825fe51@maggie>
Message-ID: <4167DD4F-0350-4EA1-98A6-CAC427989FED@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Jun 11, 2011, at 11:46 PM, Michael B?sch wrote:

> On Sat, 11 Jun 2011 23:17:50 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> iperf says to send UDP stream with speed 34.4 Gb/s.
> 
> iperf in UDP mode did never really work for me on any hardware. What about TCP? Does that work?
TCP partially hides this problem when you run TCP sessions toward a remote host. Anyway if you put some printk in b43_tx_work you will see that some TCP segments are discarded by it trying to send packets to the dma even if the rings are full. This prevents packets to queue up correctly in the qdisc, so shaping traffic through a b43 interface becomes really difficult.

BR,
-Francesco
 
