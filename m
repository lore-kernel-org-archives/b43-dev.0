From: =?UTF-8?Q?Sven_K=c3=b6hler?= <sven.koehler@gmail.com>
Date: Mon, 29 Jun 2015 19:04:47 +0300
Subject: BCM4360 support
In-Reply-To: <CACna6rzUjU8WCHMN7+zWVJbsrs_iBSHceTr=C3WQ03zPbqpzNg@mail.gmail.com>
References: <20150217164026.Horde.hDfOb0v4Cn9U42DqNQJxfoA@webmail.domainplanet.at>
 <CACna6rzUjU8WCHMN7+zWVJbsrs_iBSHceTr=C3WQ03zPbqpzNg@mail.gmail.com>
Message-ID: <55916C9F.6090704@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Am 17.02.2015 um 17:57 schrieb Rafa? Mi?ecki:
> On 17 February 2015 at 16:40,  <ockham-wpgQ8x317gheoWH0uzbU5w@public.gmane.org> wrote:
>> I recently got a new MacBook Pro Retina (15"), which comes with a Broadcom
>> 4360 Wifi:
>>
>> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4360 802.11ac
>> Wireless Network Adapter [14e4:43a0] (rev 03)
>>
>> I installed Fedora 21 on it. Getting Wifi up and running was sort of a PITA,
>> as it required installing the kmod-wl RPM via an USB stick [1].
>>
>> Can I, as a user, contribute to having the b43 kernel module support BCM4360
>> [2], e.g. by testing stuff?
> 
> Not really. I already have some AC-PHY hardware, once I get it
> running, it may be useful to test other models as well. But today
> we're still far away from getting it running.

It would help if we get anything usable, even if it was limited to
802.11g or 802.11n. Does that make things simpler? Or are AC-PHYs simply
that different from previous ones?

Note that Broadcom's wl driver isn't that good either. I cannot get a
stable connection to my access point at 802.11n. I see dramatic
increases in ping time here and there. I had to downgrade my AP to
802.11g. I never tested 802.11ac performance.


Regards,
  Sven
