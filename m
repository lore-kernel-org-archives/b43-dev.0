From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Dec 2014 23:05:36 +0100
Subject: B43 much slower that Broadcom STA's on a BCM4311
In-Reply-To: <CAK6Z60cG7kRZPhz1wMZ2Jeqozf+JEuP8DX8Rv4ZMcNthpPhsoA@mail.gmail.com>
References: <CAK6Z60cG7kRZPhz1wMZ2Jeqozf+JEuP8DX8Rv4ZMcNthpPhsoA@mail.gmail.com>
Message-ID: <CACna6rxXO-q_TJ5eYugPr3BWH5DhfOPfWr-k9hUTjpp145ZL+w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 14 December 2014 at 22:32, Nico Schl?mer <nico.schloemer@gmail.com> wrote:
> I recently installed Ubuntu 14.10 on my Macbook 8,1 which features a
> BMC4311 wifi chip.
> I tried Broadcom's own STA driver which works alright, but produces
> kernel failures all the time (I only see those in the logs, no actual
> crashes). Comparing to the B43 driver, which I'm running right now,
> the STA driver achieves MUCH greater connection speeds.
> Is this a know phenomenon? What can I do to find out if this is a
> configuration error on my side?

Well, we may be missing some adjustments or initialization bits. Hard to track.

Did you measure speed with something reliable like an iperf? What
results did you get for both drivers?

Also share your "dmesg | grep b43"

-- 
Rafa?
