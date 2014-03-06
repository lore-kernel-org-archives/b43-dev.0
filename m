From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 6 Mar 2014 08:50:42 +0100
Subject: b43 register dumping/setting
In-Reply-To: <20140306071411.GA11505@srcf.ucam.org>
References: <20140306014015.GA19521@srcf.ucam.org>
 <CACna6rzSdzfqBnm1YHQEyThO6M2raDKD6Y9jwtUhzXr+CtLq9w@mail.gmail.com>
 <20140306064231.GA9275@srcf.ucam.org>
 <CACna6ry529Mryb2dpxJY9T_zmGxDMdFO6nixwFyCR2AJksHAtw@mail.gmail.com>
 <20140306071411.GA11505@srcf.ucam.org>
Message-ID: <CACna6rxqu2AefoKfEqH1oeJYy47oBmap2Q66B8bqZ6gkA7Ycdw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-03-06 8:14 GMT+01:00 Matthew Garrett <mjg59@srcf.ucam.org>:
> On Thu, Mar 06, 2014 at 08:11:02AM +0100, Rafa? Mi?ecki wrote:
>
>> With bcma & b43 it should be doable, but what about dumping registers
>> from closed source driver? Did you figure out some way?
>
> My rough plan was to just mmap the BARs and do it from userspace...
>
> Interestingly, I can't reproduce the problem at the moment. On the other
> hand, I'm also far closer to the AP, so broadcast power may have been
> lower? I'm not actually entirely sure what could lead to sufficient
> interference to screw with the DisplayPort link (it seems like it
> happens with both GPUs on the machine, so it seems more likely that it's
> interfering with the signal than somehow screwing with a clock) so don't
> have many good ideas to start with.

We had some reports about interrupts problems when using Broadcom WiFi
and ATI GPUs. There were some straight messages in dmesg about
interrupts. I'm not sure if interrupts can also affect DisplayPort in
some way :|

-- 
Rafa?
