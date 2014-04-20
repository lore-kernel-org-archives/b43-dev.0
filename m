From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 20 Apr 2014 12:09:36 -0500
Subject: Looking for dual core (IEEE 802.11) device supported by b43
In-Reply-To: <20140420185830.1445bdbd@wiggum>
References: <CACna6rw3sLia7+Ky=EYvOb54=csigt_x-=HAOW6g-wzkke+8cg@mail.gmail.com>
 <20140420185830.1445bdbd@wiggum>
Message-ID: <5353FF50.8070507@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/20/2014 11:58 AM, Michael B?sch wrote:
> On Sun, 20 Apr 2014 18:17:17 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> I was wondering if we need support for core switching in b43. Is there
>> any device supported by b43 that has two IEEE 802.11 ssb cores?
>>
>> I was searching for examples of such devices and they always are ssb
>> chipsets 0x4306 with two IEEE 802.11 cores rev 0x04. As you know, revs
>> 0x02 and 0x04 are supported by b43legacy.
>>
>> Maybe some uncommon PCMCIA/SDIO devices? Anyone recalling them?
>
>
> There never was a supported device that required coreswitching.
> So it's completely untested.
> As of my knowledge only a few of the very early A-PHY devices
> required this.
> Feel free to remove it from b43.

I agree.

Larry
