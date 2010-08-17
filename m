From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 16 Aug 2010 20:01:45 -0500
Subject: [RFT] BCM4312 users with DMA errors, please test!
In-Reply-To: <20100817011455.4919cfbb@boulder.homenet>
References: <AANLkTimMhW7OX3DT7A3EDNaOnr577KmTv5w9C_mz19TG@mail.gmail.com>	<20100816204154.5100b604@boulder.homenet>	<20100816233544.40f0e1d4@boulder.homenet>	<4C69CF85.2020809@lwfinger.net>	<20100817010923.589d8063@boulder.homenet>
	<20100817011455.4919cfbb@boulder.homenet>
Message-ID: <4C69DF79.2020900@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Vine <chris@cvine.freeserve.co.uk>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 08/16/2010 07:14 PM, Chris Vine wrote:
>>
>> I have reproduced it twice.  It is definitely the patch, in the sense
>> that it happens with the patch included (on two separate tests that I
>> have conducted) and never without.
>>
>> I do not doubt that you do not experience this effect.  However, you
>> don't experience the DMA bug either.
> 
> Out of interest, which version of the wl module do you have installed,
> as I wonder if that makes a difference?   (As I said in my e-mail on
> this, this problem only occurs if the wl module is available to the
> kernel.)

My wl came from hybrid-portsrc-x86_32-v5.60.48.36.tar.gz. My kernel is
2.6.36-rc1 from mainline.

Very strange that a patch to ssb, which is a module that cannot even load due to
being blacklisted, can cause this kind of problem. Are you warm or cold rebooting?

Larry
