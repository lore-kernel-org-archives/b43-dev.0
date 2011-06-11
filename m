From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 11 Jun 2011 19:57:21 +0200
Subject: Can iperf work with no qos? (TCP mode)
In-Reply-To: <BANLkTimaUBe6kszbvSeSPTXR6m1t8C8O-A@mail.gmail.com>
References: <BANLkTimaUBe6kszbvSeSPTXR6m1t8C8O-A@mail.gmail.com>
Message-ID: <20110611195721.735dcf4c@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

On Sat, 11 Jun 2011 19:47:31 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> I can not get any results when trying to use iperf in TCP mode with
> driver not supporting qos.
> 
> Is this expected? Does iperf fill connection with so many packets,
> it's not possible to get response from the iperf receiver? Should not
> Linux somehow schedule packet to allow bi-direction communication,
> even on really filled connection?

iperf will only fill the best effort queue. At least that's what it did
last time when I looked into the code.
You can verify that with b43's ring statistics.
