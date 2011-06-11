From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 11 Jun 2011 19:47:31 +0200
Subject: Can iperf work with no qos? (TCP mode)
Message-ID: <BANLkTimaUBe6kszbvSeSPTXR6m1t8C8O-A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

I can not get any results when trying to use iperf in TCP mode with
driver not supporting qos.

Is this expected? Does iperf fill connection with so many packets,
it's not possible to get response from the iperf receiver? Should not
Linux somehow schedule packet to allow bi-direction communication,
even on really filled connection?

-- 
Rafa?
