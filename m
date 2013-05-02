From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 02 May 2013 10:01:51 -0500
Subject: [PATCH] B43: Handle DMA RX descriptor underrun
In-Reply-To: <20130502150603.2ac36385@milhouse>
References: <alpine.DEB.2.02.1304231851040.1513@kelly.ryd.net>
 <20130502150603.2ac36385@milhouse>
Message-ID: <51827FDF.3060406@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Michael_B=FCsch?= <m@bues.ch>
Cc: Thommy Jakobsson <thommyj@gmail.com>, linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 05/02/2013 08:06 AM, Michael B?sch wrote:
> On Tue, 23 Apr 2013 21:45:11 +0200 (CEST)
> Thommy Jakobsson <thommyj@gmail.com> wrote:
>
>> From: Thommy Jakobsson <thommyj@gmail.com>
>>
>> Add handling of rx descriptor underflow. This fixes a fault that could
>> happen on slow machines, where data is received faster than the CPU can
>> handle. In such a case the device will use up all rx descriptors and
>> refuse to send any more data before confirming that it is ok. This
>> patch enables necessary interrupt to discover such a situation and will
>> handle them by dropping everything in the ring buffer.
>>
>> Reviewed-by: Michael Buesch <m@bues.ch>
>> Signed-off-by: Thommy Jakobsson <thommyj@gmail.com>
>> Cc: stable <stable@vger.kernel.org>
>
> Anybody interested in porting this to b43legacy (and testing)?

Michael,

I will take care of that. It may take a while due to other projects.

Larry
