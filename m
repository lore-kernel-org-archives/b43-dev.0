From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 15 Jul 2014 21:47:38 +0200
Subject: [PATCH][3.16 MAYBE?] b43: don't warn about no 5 GHz support on
 2.4 GHz devices
In-Reply-To: <20140715193011.GE26012@tuxdriver.com>
References: <1404846019-11079-1-git-send-email-zajec5@gmail.com>
 <20140715193011.GE26012@tuxdriver.com>
Message-ID: <CACna6ryHYG-TNRBfHvsCQoN3FvGjWrVyqPpmaRZB1MLq4PyUKg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 15 July 2014 21:30, John W. Linville <linville@tuxdriver.com> wrote:
> On Tue, Jul 08, 2014 at 09:00:19PM +0200, Rafa? Mi?ecki wrote:
>> This could be a bit confusing to see warning about lacking support for
>> 5 GHz band if your device supports 2.4 GHz only.
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> John: even I was quite confused to see this warning on my BCM5357. I
>> suspected b43 incorrectly detected my WiFi as 5 GHz capable. I think
>> that proposed behavior makes more sense.
>> Do you think it's OK/worth to take it for 3.16?
>
> I don't really think it merits prommotion to 3.16.  I am happy to
> merge it for -next.

OK, no problem, thanks :)

-- 
Rafa?
