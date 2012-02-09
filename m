From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 9 Feb 2012 20:17:30 +0100
Subject: Wireless Problem
In-Reply-To: <4F3417B6.4060005@cfl.rr.com>
References: <4F3417B6.4060005@cfl.rr.com>
Message-ID: <CACna6rxanokAjM4Jy-7C9SFk89Bepn6p3+GM0kduLxaP0y37GQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/2/9 Vince Radice <vhradice@cfl.rr.com>:
> ? ?I am having a problem trying to get a Netgear WNA3100 adapter working. ?I
> have probably been through 100+ posts and threads trying to figure out what
> is happening. ?I have attached two files. ?One contains the output from
> dmesg. ?The other has the output from several commands as requested in the
> doc.

This is BCM43231, fullmac device, nothing to-be-covered by b43 driver.
The driver that may support this chipset is brcmfmac, but for now only
support for BCM4329, BCM4330 and BCM43236 was recently-added. I think
I remember Arend saying they are not working on support for BCM43231
for now. I may be wrong however.

We could try hacking support for this chipset by just extracting
firmware for BCM43231 and adding proper USB ID in brcmfmac. I don't
think anyone is working on this.

-- 
Rafa?
