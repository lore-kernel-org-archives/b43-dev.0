From: Adrian Chadd <adrian@freebsd.org>
Date: Sun, 15 May 2016 07:44:51 -0700
Subject: [b43] don't unconditionally fall back to CCK if the rate is 6MB
 OFDM.
In-Reply-To: <20160515163906.3d64d8fe@wiggum>
References: <CAJ-Vmom45Pb9X_1Zw6VdszZAiizZUUd=HbEFw0hFMmPFFSNbpQ@mail.gmail.com>
 <20160515163906.3d64d8fe@wiggum>
Message-ID: <CAJ-VmonNc_qFWJf+AOsUOUVMmRJwH4r_y8YSGrnKWuh=vUJnMQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: b43-dev@lists.infradead.org, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Kalle Valo <kvalo@codeaurora.org>

On 15 May 2016 at 07:39, Michael B?sch <m@bues.ch> wrote:
> On Sun, 15 May 2016 07:23:25 -0700
> Adrian Chadd <adrian@freebsd.org> wrote:
>
>> @@ -438,7 +446,7 @@ int b43_generate_txhdr(struct b43_wldev *dev,
>>
>>                 rts_rate = rts_cts_rate ? rts_cts_rate->hw_value :
>> B43_CCK_RATE_1MB;
>
> I just noticed that this is incorrect for 5GHz, too.
> Maybe there are more such bugs.

There are other bugs, yes. I'll do some more digging and submit
follow-up patches, including for the rts_rate selection.

I've tested this on BCM4321 on FreeBSD; it came up in a code review of
b43 whilst I was learning about the driver/hardware. I've tested the
change on FreeBSD and it works correctly. I'll setup a separate PC
linux environment next week to test things on.


-adrian
