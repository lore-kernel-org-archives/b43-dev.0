From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 9 Nov 2012 07:46:52 +0100
Subject: [help] WiFi connection //Re: [PATCH][2.6.39?] b43: trivial:
 update module info about firmware
In-Reply-To: <CAF1EbZh=mPKVy=G4AgK1Fz6FxJjnAgaHdoGt6Uwohe+fvhYkgg@mail.gmail.com>
References: <CAF1EbZh=mPKVy=G4AgK1Fz6FxJjnAgaHdoGt6Uwohe+fvhYkgg@mail.gmail.com>
Message-ID: <CACna6ryLuoEZeTTP9g-RfY-1QofGMf4445huU8PZSyEv8ZSxSA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?WmhvdSBoYW5neGluZyDlkajooYzooYw=?= <hangxing.zhou@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2012/11/9 Zhou hangxing ??? <hangxing.zhou@gmail.com>:
> One question about WiFi connect event in driver layer. I appreciate some
> information from your guys if possible.
>
> There is a device_A with WiFi module,  the application in smart
> phone(iPhone) can communicate with the device_A via socket connection.
>
> In this case, if user goes to setting screen in iPhone, and disable the WiFi
> directly( the application is still running).
>
> Does the driver layer know the status of WiFi connection in device_A?
> Or any event message can be indicated by WiFi driver in device_A?

So... are you using Linux on iPhone? Some Android port?

What WiFi chipset does it have? Some BCM4312 (LP-PHY) with higher PHY
rev? I though phones are usually using fullmac devices...

You way want to check rfkill, but I'm not sure it Android is using that.

-- 
Rafa?
