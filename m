From: Dag Wieers <dag@wieers.com>
Date: Wed, 3 Apr 2013 11:16:07 +0200 (CEST)
Subject: BCM4321 (b43) on AppleTV (1st gen)
In-Reply-To: <CACna6rwrq1qF4Rmf81OhO7jrXouUdjcAvnMtJcnCb4s=zm7a2w@mail.gmail.com>
References: <alpine.LRH.2.02.1302072238200.2736@pikachu.3ti.be>
 <CACna6rwrq1qF4Rmf81OhO7jrXouUdjcAvnMtJcnCb4s=zm7a2w@mail.gmail.com>
Message-ID: <alpine.LRH.2.02.1304031105330.26996@pikachu.3ti.be>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Wed, 3 Apr 2013, Rafa? Mi?ecki wrote:

> It's terribly late reply, but only recently I've time to plug in my
> old BCM4321/BCM4322 cards and test them. There were few regressions
> affecting BCM4322, but nothing BCM4321 related (there are many
> differences between them).
>
> In my env I can't get more than 22Mb/s using my BCM4322. It's
> 2,75MB/s, so your 3MB/s is even better result than mine. The problem
> is that b43 doesn't support 802.11n features, so it can't work any
> faster. Values around 2-3MB/s is maximum you can get from 802.11g.

I can see from the access point that it often indicates the system to be 
connected at 54Mbps, but I never seem to get that throughput. However the 
numbers I indicate are SFTP transfers with some overhead, but also 
buffering (so it usually starts off quite fast and then the number drops 
rapidly). Not very scientific so it might as well be 2.75MB/s :)


> I plan to add support for new devices, then 5GHz, then maybe I'll take
> a look at 802.11n standard. So unfortunately there's a long way before
> we can support higher speeds :(

If it helps, I can offer two of this mini PCI adapters to any developer 
interested in improving the support of the BCM4321.


> P.S.
> I suggest Cc-ing b43 mailing list in the future ;)

Done :)

Thanks for the feedback,
-- 
-- dag wieers, dag at wieers.com, http://dag.wieers.com/
-- dagit linux solutions, info at dagit.net, http://dagit.net/

[Any errors in spelling, tact or fact are transmission errors]
