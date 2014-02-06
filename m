From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 6 Feb 2014 09:47:56 +0100
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti29in5Y5PgWLKaWPJu1hUKYgYWi2a0cWORXqaFd8Y_XNRg@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
 <CACna6rwXrua5-55+T=y+NACVnXkwrEEVg-A-UK=x6Pk5W9-EGQ@mail.gmail.com>
 <CAD2Ti29in5Y5PgWLKaWPJu1hUKYgYWi2a0cWORXqaFd8Y_XNRg@mail.gmail.com>
Message-ID: <CACna6rz4PCBCOZbwPCXZzwnBZgMFbgANk0ZwGmO+CLqCPmxs2Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-02-06 9:19 GMT+01:00 grarpamp <grarpamp@gmail.com>:
> On Thu, Feb 6, 2014 at 1:10 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>> How does something like '6.30.102.9 (r366174)' on the wrapper
>>> relate to its corresponding internal '784.2'? What are those
>>> strings each describing?
>>
>> Broadcom's closed source driver embeds firmware in the driver. They
>> don't request it from the user space (ex. from /lib/firmware/).
>> However they develop driver and firmware independently, so they use
>> different numbering for them.
>>
>> You can't really say what firmware version is embedded in the driver
>> until you load this firmware to the WiFi card and read the version
>> back.
>>
>> What we do is downloading closed source driver (that was compiled for
>> some completely different system/architecture) and extract firmware
>> from it (which is a tiny part of the total size). We extract it to the
>> /lib/firmware/ and then b43 can use it.
>
> I should say i understand Broadcom makes a closed source
> linux driver:
> http://www.broadcom.com/support/802.11/linux_sta.php
> which I don't think includes the card firmware, but I'll
> try to unpack it again and look closer. Even if it does
> i don't see any reference on b43 site to fw ever being
> cut out of it and used with b43/insmod, only to blobs
> from GPL being used that way.

It has to include firmware, it's just (as I said) compiled into the binary.

We don't extract firmware from Linux STA because it wasn't available
for a long time, it was only recently updated and you can usually find
newer firmware in routers (MIPS/ARM) drivers.


> What I didn't understand was if I run strings on wl_apsta.o
> I get the first number, and b43 prints the second number
> when loading the firmware. I didn't get what those different
> numbers in the same .o/.fw file represented. And I'm
> not sure if the first number is present in the loaded firmware
> to also be printed on load.

I told you. The other number (784.2, etc.) is what firmware reports.
You have to upload firmware to the WiFi card and read it back. Since
the whole firmware in a blob (embedded in the driver), above number
(784.2) isn't visible as a string.
