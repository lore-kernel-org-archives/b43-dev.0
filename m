From: Nirav Patel <nspho1@gmail.com>
Date: Sat, 26 Sep 2015 15:31:24 +0530
Subject: Support for bcm43217 pci id 14e4:a8db
In-Reply-To: <CACW9AP4wHpZX_DxNQCyvCrQyc69YJYO4UzsM=ubZ6wfZaXEXCg@mail.gmail.com>
References: <CACW9AP4wHpZX_DxNQCyvCrQyc69YJYO4UzsM=ubZ6wfZaXEXCg@mail.gmail.com>
Message-ID: <CACW9AP497W6pYdhz4nvoZ6N_SHdAed66H5F4M+=5rZZ+XYCUgA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

When we would get support for [Chip ID bcm43217 | PCI-ID 14e4:a8db |
PHY N (r17)] ?
Currently I have tested it in openwrt chaos calmer and found that:
 It works perfectly well in 802.11g mode.
 But it doesn't work in 802.11n mode.

On the page https://wireless.wiki.kernel.org/en/users/drivers/b43 it
is mentioned that it is partially supported. It is not supported by
any other driver except b43. And the use of this chip is increasing
(at least in embedded devices) day by day AFAIK.

Please tell me if it would be supporting wireless n in future or not?
If yes, what's the status of the work? Tell me if I could help in it's
support.

For further details read my ticket and all comments at
https://dev.openwrt.org/ticket/20227.
Thanks in advance for your help and time taken.
