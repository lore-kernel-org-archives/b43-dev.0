From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 12 Jun 2011 16:45:04 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <20110611234655.1825fe51@maggie>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<BANLkTikBEK=+7HuU_AxYLfq+xvDBpP5b5w@mail.gmail.com>
	<20110611223415.2f39adde@maggie>
	<BANLkTinMbZGO_JNabgZAnqATA2g7i8mbMA@mail.gmail.com>
	<BANLkTim920vWQJyLX1uvekjoP8UEs0u+ew@mail.gmail.com>
	<20110611234655.1825fe51@maggie>
Message-ID: <BANLkTikBkO5cYk3xG6-ps5-VGjmBUji2ew@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 11 czerwca 2011 23:46 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Sat, 11 Jun 2011 23:17:50 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> iperf says to send UDP stream with speed 34.4 Gb/s.
>
> iperf in UDP mode did never really work for me on any hardware. What about TCP? Does that work?

Generally, yes, it works. However when using pio=1 I've to use qos=0.
That's the only way to don't get disconnected on the first
communication (after authentication). And iperf on TCP does not wok in
pio=1 qos=0 configuration. That's why I started playing with UDP.

-- 
Rafa?
