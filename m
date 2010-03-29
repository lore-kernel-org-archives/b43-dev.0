From: Gene Heskett <gene.heskett@verizon.net>
Date: Mon, 29 Mar 2010 08:39:27 -0400
Subject: [PATCH V2] ssb: Implement virtual SPROM on disk
In-Reply-To: <20100329094416.125cf970@vaiolo.stefanobrivio.net>
References: <4ba6aa45.z5Wso1NMth9eMeFG%Larry.Finger@lwfinger.net>
	<4BB013C2.2080400@lwfinger.net>
	<20100329094416.125cf970@vaiolo.stefanobrivio.net>
Message-ID: <201003290839.27366.gene.heskett@verizon.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Monday 29 March 2010, Stefano Brivio wrote:
>On Sun, 28 Mar 2010 21:43:14 -0500
>
>Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> On 03/28/2010 09:21 PM, Gene Heskett wrote:
>> > How many servers are emitting this b43 list these days?  I have
>> > recently had to add 2 more to the kmail filters here in order to
>> > route this lists mail properly.  I hope a subscription to one is
>> > sufficient for all.
>>
>> The list is being switched to infradead. Perhaps berlios is still
>> active. That should not last too long.
>
>Actually, I already disabled sending from berlios (I'll be shutting
>it down completely as soon as things have settled), so this shouldn't
>happen.
>
>It looks like lists messages on infradead get sent from at least two
>different servers, anyway. In order not to be affected by this, I
>suggest filtering on the List-Id header instead. The matching value is
>"b43-dev.lists.infradead.org".
>
No, its "b43-dev at lists.infradead.org"
>--
>Greetings
>Stefano

There is no such header on the incoming messages, or kmail is stripping it. 
It cannot be found in a view all headers setting.  So if I hit reply, it 
goes back to the OP (if it will go at all), and a 'reply all' gets me a list 
I have to clean up in order to just leave the server as the recipient.  It 
starts out as a CC:

This isn't a very satisfactory method, highly prone to errors and its the 
only list of about 40 I have to do that to.  If I leave the OP addresses in, 
the messages are either stuck in the outbox, or bounce if the OP isn't 
Larry.  I presume many are using fake addresses to control spam or some 
such.


-- 
Cheers, Gene
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author)

Lie, n.:
	A very poor substitute for the truth, but the only one
	discovered to date.
