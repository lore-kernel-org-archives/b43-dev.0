From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 3 Apr 2013 12:35:08 +0200
Subject: BCM4321 (b43) on AppleTV (1st gen)
In-Reply-To: <alpine.LRH.2.02.1304031105330.26996@pikachu.3ti.be>
References: <alpine.LRH.2.02.1302072238200.2736@pikachu.3ti.be>
 <CACna6rwrq1qF4Rmf81OhO7jrXouUdjcAvnMtJcnCb4s=zm7a2w@mail.gmail.com>
 <alpine.LRH.2.02.1304031105330.26996@pikachu.3ti.be>
Message-ID: <CACna6ry7jp=YE+_AUK8Fz1aHaQ_R7-Xxbx1pVzwkKYzJWWyJCA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dag Wieers <dag@wieers.com>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2013/4/3 Dag Wieers <dag@wieers.com>:
> On Wed, 3 Apr 2013, Rafa? Mi?ecki wrote:
>
>> It's terribly late reply, but only recently I've time to plug in my
>> old BCM4321/BCM4322 cards and test them. There were few regressions
>> affecting BCM4322, but nothing BCM4321 related (there are many
>> differences between them).
>>
>> In my env I can't get more than 22Mb/s using my BCM4322. It's
>> 2,75MB/s, so your 3MB/s is even better result than mine. The problem
>> is that b43 doesn't support 802.11n features, so it can't work any
>> faster. Values around 2-3MB/s is maximum you can get from 802.11g.
>
>
> I can see from the access point that it often indicates the system to be
> connected at 54Mbps, but I never seem to get that throughput. However the
> numbers I indicate are SFTP transfers with some overhead, but also buffering
> (so it usually starts off quite fast and then the number drops rapidly). Not
> very scientific so it might as well be 2.75MB/s :)

54Mb/s is 6,75MB/s, but you'll never reach that speed on 802.11g. No
matter what card, what driver :) 3MB/s is probably sth around the
maximum speed *in practice*. I was doing my tests with "iperf".


>> I plan to add support for new devices, then 5GHz, then maybe I'll take
>> a look at 802.11n standard. So unfortunately there's a long way before
>> we can support higher speeds :(
>
>
> If it helps, I can offer two of this mini PCI adapters to any developer
> interested in improving the support of the BCM4321.

I've tons of N-PHY (and not only) devices around, so don't really need
any donate of that devices. I just have to find time for this.

-- 
Rafa?
