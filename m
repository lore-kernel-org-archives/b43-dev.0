From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 20:35:24 +0200
Subject: Questions about firmware
In-Reply-To: <4E48146E.10705@lwfinger.net>
References: <4E480D1B.2000805@lwfinger.net>
	<CACna6rzM+bUSofoddLkX=m93on5JLNj2JFuBz8Lf_9a8QkcHLA@mail.gmail.com>
	<4E48146E.10705@lwfinger.net>
Message-ID: <CACna6rztb68k4g7P=BaFcB-iZDRivnPCGCoZ+V4hziKgoyg86A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 20:31 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 08/14/2011 01:21 PM, Rafa? Mi?ecki wrote:
>>
>> For wiki [1] readers we will need to write some short instruction.
>>
>> For distribution I propose something easier. If distro is using 3.1
>> kernel - provide script using older firmware. If distro is using 3.2
>> or newer - extract firmware from newer driver.
>
> For non-HT PHY and 3.2, will the driver handle both flavors of firmware? I
> think the answer is yes, but I want confirmation.

Yes, we keep backward compatibility with older firmwares.

-- 
Rafa?
