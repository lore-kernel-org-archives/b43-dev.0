From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 11 May 2011 18:22:13 +0200
Subject: Optimization: keeping pointer all the time, or defining getter?
Message-ID: <BANLkTi=xOtAaxh8Q7Nk84Rwz9jM-6EP1Ww@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org

I try to abstract bus in b43 driver. For frequently used fields
solution is obvious:
At init time I get info from bus-specific stuct and put it in generic field.
Example: core revision. We often refer to it, I put it in abstraction struct.

My question: what is the policy for cases with less frequently used fields?
Example: I need to use "struct device" for registering some low lever stuff.

I have two solutions:

1) Realtime:
struct device *get_device(...)
{
if (dev->bus_type = B43_BUS_SSB)
return dev->ssbdev->device;
else if (dev->bus_type = B43_BUS_BCMA)
return dev->bcmadev->device;
}

2) Init time:
void b43_ssb_init(struct ssb_device *ssbdev)
{
dev->struct = ssbdev->device;
}

The first one is slower but we don't keep "struct device" pointer in
abstraction struct. Situation is opposite for the second one.

Does anyone care? ;)

-- 
Rafa?
