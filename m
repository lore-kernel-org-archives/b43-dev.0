From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 9 Aug 2015 19:57:52 +0200
Subject: Wireless is not working after upgrading kernel to
 4.2.0-rc5-00183-g3fbdc37
In-Reply-To: <55C77F44.1080408@lwfinger.net>
References: <CAGQKE9sN1bU8YtmLZa2eLyahwjxr3mRAVmsd5ixMiXgAXGKrGQ@mail.gmail.com>
 <55C77F44.1080408@lwfinger.net>
Message-ID: <CACna6rzyXTvgxULc1=n9uO8wjn4aCv3cJHe7b+W40odwiAQPGw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 9 August 2015 at 18:26, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 08/09/2015 09:35 AM, srinivas k wrote:
>> I have upgrade my kernel to 4.2.0-rc5-00183-g3fbdc37, after upgrading
>> i could not see my wireless is working.
>>
>>
>> Here is the outpt of "lspci -nn -d 14e4:"
>>
>> penguin at penguin:~$ lspci -nn -d 14e4:
>> 07:00.0 Network controller [0280]: Broadcom Corporation BCM43142
>> 802.11b/g/n [14e4:4365] (rev 01)
>>
>> Sorry for my bad english,
>
>
> According to https://wireless.wiki.kernel.org/en/users/Drivers/b43, that
> device is not supported by b43. The only driver for that device is wl, the
> proprietary driver by Broadcom. That driver needs to be reinstalled every
> time the kernel is changed. That is what you need to do.

That's right. In other words you were never using b43 with this card.
It just couldn't work.

-- 
Rafa?
