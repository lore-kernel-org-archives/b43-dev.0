From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Tue, 08 Jun 2010 07:00:53 +0200
Subject: BCM5354
In-Reply-To: <AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com>
	(sfid-20100607_193840_198990_32ECDE26)
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net>
	<4C0D40C2.7050409@sephix.com> <4C0D4BB3.7070607@lwfinger.net>
	<4C0D4E98.3040903@sephix.com>	<AANLkTimhZWtVucKu4_Mhrd8WdHk2ngR37pEans71gZBa@mail.gmail.com>
	<AANLkTimdhwo-KhM3c1mJmyZih4CKPNRKQmVLGNgY8DOg@mail.gmail.com>
	(sfid-20100607_193840_198990_32ECDE26)
Message-ID: <4C0DCE85.5000506@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/08/2010 01:38 AM, Chris Martin wrote:
> I to am working on project using openWrt and  the  BCM5354, and we too
> are using the 2.4 kernel.
> However I have been testing the 2.6 with wireless compat (b43)
>
> I was about to log an trac issues with openWrt today, but I
> saw this post so I thought that would add my bit here as well.
>
> I can confirm that It works flawlessly in client mode.  However It fails
> in AP mode.
>
> There are 2 types of errors that I encounter.  NOTE: these problems do
> not appear in STA mode.  I have been using STA mode for over a month -
> all day.   I am currently working on another issue, but once I have that
> solved I was going to start on this.  But in the mean time I DO have
> the resources and the time to test anything that anyone may suggest.
>   and if I find a solution I will obviously be posting it back here.
>
> In AP mode the time it takes for the following errors to occur varies -
> sometimes it will run for 1/2 day OK.  others it
> fails almost immediately - but mostly it is unusable
>
> --------------ERROR 1----------------
>
> b43-phy0 ERROR: DMA RX buffer too small (len: 64653, buffer: 2352,
> nr-dropped: 28)

Hm, the length looks like a negative number (-884). I don't see why the 
firmware should report negative length, however. May also be a simple 
integer underflow for whatever reason.
In any case, I think the firmware probably died and responds with crap. 
Which would also explain the suspend failures.

> b43-phy0 ERROR: MAC suspend failed
> b43-phy0 ERROR: MAC suspend failed

Are there any LP specific hostflags that need to be set in AP mode?

-- 
Greetings Michael.
