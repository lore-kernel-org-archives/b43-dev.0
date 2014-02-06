From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 6 Feb 2014 07:10:30 +0100
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
Message-ID: <CACna6rwXrua5-55+T=y+NACVnXkwrEEVg-A-UK=x6Pk5W9-EGQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-02-06 grarpamp <grarpamp@gmail.com>:
>> Ah, I know it by a different number.
>
> What number is that?
> How does something like '6.30.102.9 (r366174)' on the wrapper
> relate to its corresponding internal '784.2'? What are those
> strings each describing?

Broadcom's closed source driver embeds firmware in the driver. They
don't request it from the user space (ex. from /lib/firmware/).
However they develop driver and firmware independently, so they use
different numbering for them.

You can't really say what firmware version is embedded in the driver
until you load this firmware to the WiFi card and read the version
back.

What we do is downloading closed source driver (that was compiled for
some completely different system/architecture) and extract firmware
from it (which is a tiny part of the total size). We extract it to the
/lib/firmware/ and then b43 can use it.

In the past there were only 2 noticeable changes in the driver <->
firmware communication. It results in some 3 different code paths in
the b43 (we didn't drop support for the old firmwares yet).

-- 
Rafa?
