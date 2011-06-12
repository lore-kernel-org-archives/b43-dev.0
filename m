From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 12 Jun 2011 21:07:47 +0200
Subject: [RFC][PATCH] b43: do not try sending packets when ring can be full
In-Reply-To: <20110612204859.37e7aed5@maggie>
References: <1307891513-6812-1-git-send-email-zajec5@gmail.com>
	<20110612182916.6afc781a@maggie>
	<BANLkTikVLH8xApD4e5uNW-3Eg6kaMXipBg@mail.gmail.com>
	<20110612204859.37e7aed5@maggie>
Message-ID: <BANLkTi=uMqA0LTVnRKtqmgBapokj3GiFdQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, francesco.gringoli@ing.unibs.it

W dniu 12 czerwca 2011 20:48 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Sun, 12 Jun 2011 20:15:53 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> Well, as I said, we may be unable to transmit the first element of the
>> queue, but 2nd/3rd/... may be for different ring (qos) (we can
>> transmit).
>>
>> Looping through the whole queue every time, just to find packets we
>> may transmit, sounds surely as a bad idea.
>
> I don't think so. It's not that this is an actual queue anyway. It just acts
> as a buffer to queue up one or two packets in the small race window of
> actually filling up the DMA rings and stopping the mac80211 queue.
> (It also acts as a context dispatcher in the first place, though).
>
> So the "looping through the queue" just means checking if one or two packets
> can be transmitted now.

Ouch, I didn't though about stopping queue. Yeah, length of that queue
should not reach big sizes...

-- 
Rafa?
