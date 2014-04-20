From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Apr 2014 21:29:01 +0200
Subject: [wireless-next][PATCH 1/2] b43: ssb: refuse to support more than
 IEEE 802.11 core
In-Reply-To: <20140420205452.79a95330@wiggum>
References: <1398018659-17263-1-git-send-email-zajec5@gmail.com>
 <20140420205452.79a95330@wiggum>
Message-ID: <CACna6rwjEP8qZ+SWQEOREmr=4wBJSgeNY_mG5GQpOWem7Jgrgw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

2014-04-20 20:54 GMT+02:00 Michael B?sch <m@bues.ch>:
> On Sun, 20 Apr 2014 20:30:58 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>> index 69fc3d6..cf84cf2 100644
>> --- a/drivers/net/wireless/b43/main.c
>> +++ b/drivers/net/wireless/b43/main.c
>> @@ -5486,39 +5486,42 @@ int b43_ssb_probe(struct ssb_device *sdev, const struct ssb_device_id *id)
>>       struct b43_bus_dev *dev;
>>       struct b43_wl *wl;
>>       int err;
>> -     int first = 0;
>>
>>       dev = b43_bus_dev_ssb_init(sdev);
>>       if (!dev)
>>               return -ENOMEM;
>>
>>       wl = ssb_get_devtypedata(sdev);
>
>
> The whole "struct b43_wl" and "ssb_get_devtypedata" was to support multiple
> cores of the same type in a single driver instance (= b43 multicore).
> With multicore support being removed, everything in b43_wl could be merged into b43_wldev.
> Also the use of ssb_get_devtypedata could probably be removed, too.
>
> This will simplify a lot of the b43 startup and shutdown code.

Yeah, I've noticed that, but this will be a bit complex to clean all
that code. I planned to handle this in future with further patches.

Do you think it's OK to push this small patchset and continue cleaning
process later? I'm afraid it may take a lot of time to clean in
completely and patchset would be huge. That's why I wanted to handle
it with small steps.
