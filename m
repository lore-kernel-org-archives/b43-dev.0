From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 21 Jul 2011 16:49:30 -0500
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <20110721234027.29ba1be2@maggie>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>	<1311113542-2540-2-git-send-email-zajec5@gmail.com>	<20110720011509.504022f8@maggie>	<CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>	<20110720105540.1c9d072c@maggie>	<CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>	<20110720153542.69edd601@Nokia-N900>	<4E28422C.60209@gnu.org>	<CACna6rz+t=ZOSiK+7weN7onZh3z44QeZSiuwY2L3oSxRneFV8A@mail.gmail.com>	<20110721193440.2baeaae3@Nokia-N900>	<20110721232225.1b0e1f15@maggie>	<CACna6rwe9qU05yyCBvoCt8t6Ty=Vz8=_0JCDaAgmOE3da=VUcA@mail.gmail.com>
	<20110721234027.29ba1be2@maggie>
Message-ID: <4E289EEA.7000806@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/21/2011 04:40 PM, Michael B?sch wrote:
> On Thu, 21 Jul 2011 23:31:24 +0200
> Rafa? Mi?ecki<zajec5@gmail.com>  wrote:
>> Don't you mind if I prepare improvement (AKA fix) for b43legacy and
>> just post it today?
>
> Yeah that's OK, of course. It just needs to go in before it hits lots
> of users.

I agree that you should fix b43leagacy and leave the ssb patch alone.

Sorry that I did not get a chance to test the code, even though I promised I 
would. I've been busy figuring out what firmware is needed for 802.11 core 
revisions > 16.

Larry
