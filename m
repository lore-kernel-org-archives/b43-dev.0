From: =?UTF-8?Q?Nico_Schl=C3=B6mer?= <nico.schloemer@gmail.com>
Date: Sun, 14 Dec 2014 22:32:17 +0100
Subject: B43 much slower that Broadcom STA's on a BCM4311
Message-ID: <CAK6Z60cG7kRZPhz1wMZ2Jeqozf+JEuP8DX8Rv4ZMcNthpPhsoA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

I recently installed Ubuntu 14.10 on my Macbook 8,1 which features a
BMC4311 wifi chip.
I tried Broadcom's own STA driver which works alright, but produces
kernel failures all the time (I only see those in the logs, no actual
crashes). Comparing to the B43 driver, which I'm running right now,
the STA driver achieves MUCH greater connection speeds.
Is this a know phenomenon? What can I do to find out if this is a
configuration error on my side?

Cheers,
Nico
