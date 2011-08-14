From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 14 Aug 2011 14:03:11 -0500
Subject: Questions about firmware
In-Reply-To: <CACna6rztb68k4g7P=BaFcB-iZDRivnPCGCoZ+V4hziKgoyg86A@mail.gmail.com>
References: <4E480D1B.2000805@lwfinger.net>	<CACna6rzM+bUSofoddLkX=m93on5JLNj2JFuBz8Lf_9a8QkcHLA@mail.gmail.com>	<4E48146E.10705@lwfinger.net>
	<CACna6rztb68k4g7P=BaFcB-iZDRivnPCGCoZ+V4hziKgoyg86A@mail.gmail.com>
Message-ID: <4E481BEF.7000001@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/14/2011 01:35 PM, Rafa? Mi?ecki wrote:
> W dniu 14 sierpnia 2011 20:31 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net>  napisa?:
>> On 08/14/2011 01:21 PM, Rafa? Mi?ecki wrote:
>>>
>>> For wiki [1] readers we will need to write some short instruction.
>>>
>>> For distribution I propose something easier. If distro is using 3.1
>>> kernel - provide script using older firmware. If distro is using 3.2
>>> or newer - extract firmware from newer driver.
>>
>> For non-HT PHY and 3.2, will the driver handle both flavors of firmware? I
>> think the answer is yes, but I want confirmation.
>
> Yes, we keep backward compatibility with older firmwares.

OK. I will modify the openSUSE script accordingly, and I will try to update the 
wiki.

The other distros will presumably catch up.

Larry
