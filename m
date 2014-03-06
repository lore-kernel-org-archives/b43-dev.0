From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 6 Mar 2014 07:30:20 +0100
Subject: b43 register dumping/setting
In-Reply-To: <20140306014015.GA19521@srcf.ucam.org>
References: <20140306014015.GA19521@srcf.ucam.org>
Message-ID: <CACna6rzSdzfqBnm1YHQEyThO6M2raDKD6Y9jwtUhzXr+CtLq9w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-03-06 2:40 GMT+01:00 Matthew Garrett <mjg59@srcf.ucam.org>:
> Every time I send a packet on the 4331 in this Macbook Pro, the screen
> flickers. It doesn't happen with the closed driver. Is there a simple
> way to dump the SSB and b43 registers from userspace and rewrite them in
> an attempt to identify whether there's some magic "Don't fuck with my
> displayport timings" bit?

Oh, that's something new.
There isn't such tool according to my knowledge and it may be a tricky
to track everything needed.

First, please note BCM4331 is using BCMA instead of the older SSB.
Second, there are plenty of registers you may need to dump. BCMA bus
has multiple cores, every core has it's agent/wrapper core. You should
probably dump registers of PCIe, ChipCommon and 80211 cores. To make
that more tricky PCIe and 80211 cores have few sets of indirect
registers.

As a quick test: did you try pio mode? I'm not even sure if it used to
work with BCM4331, but it's easy to try. Just b43.pio=1.

-- 
Rafa?
