From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 20:48:59 +0200
Subject: Questions about firmware
In-Reply-To: <CACna6rzM+bUSofoddLkX=m93on5JLNj2JFuBz8Lf_9a8QkcHLA@mail.gmail.com>
References: <4E480D1B.2000805@lwfinger.net>
	<CACna6rzM+bUSofoddLkX=m93on5JLNj2JFuBz8Lf_9a8QkcHLA@mail.gmail.com>
Message-ID: <CACna6ryOb5JJEZzO1cwuuQUgS=c6vU+WBLzF-cnVK1NO3AzNDQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 20:21 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 14 sierpnia 2011 19:59 u?ytkownik Larry Finger
>> Any other ideas?
>
> For wiki [1] readers we will need to write some short instruction.
>
> For distribution I propose something easier. If distro is using 3.1
> kernel - provide script using older firmware. If distro is using 3.2
> or newer - extract firmware from newer driver.

If you really care, you can add some magic switch like
--force-newer-firmware
for ppl installing compat-wireless.

-- 
Rafa?
