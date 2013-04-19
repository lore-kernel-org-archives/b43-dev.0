From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Fri, 19 Apr 2013 17:59:33 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <20130419175549.21db7b33@milhouse>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <20130419175549.21db7b33@milhouse>
Message-ID: <CAOiHx=keSZY7rO9BXS-3kGyzO7DeSdLCnfMXF45=kv==D2s+og@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, Apr 19, 2013 at 5:55 PM, Michael B?sch <m@bues.ch> wrote:
> On Fri, 19 Apr 2013 16:32:00 +0200
> Jonas Gorski <jonas.gorski@gmail.com> wrote:
>
>> Apart from the style problems, maybe doing a
>>       if (printk_ratelimit())
>>               b43warn(...);
>>
>> which will ensure that it won't flood the log, but still won't stop
>> reporting them after the 256th time.
>
> All b43 log helpers are ratelimited already. So no need for that.

Even better :-)

Jonas
