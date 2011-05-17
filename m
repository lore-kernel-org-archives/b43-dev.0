From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 17 May 2011 15:14:28 +0200
Subject: ssb: how did we get special reject bit for SSB rev 2.3?
In-Reply-To: <BANLkTinP083x+cWD1qk1LQYYn=QL18uN9g@mail.gmail.com>
References: <BANLkTik2Sc9aWi_cHVvLJzGv3esey=wPag@mail.gmail.com>
	<1305631218.4250.0.camel@maggie>
	<BANLkTinP083x+cWD1qk1LQYYn=QL18uN9g@mail.gmail.com>
Message-ID: <BANLkTik1NMnj6ddjfBbrs65Jqw-C11EN9Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Michael Buesch <mb@bu3sch.de>, Larry Finger <Larry.Finger@lwfinger.net>

W dniu 17 maja 2011 13:50 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> W dniu 17 maja 2011 13:20 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
>> On Tue, 2011-05-17 at 12:40 +0200, Rafa? Mi?ecki wrote:
>>> Does anyone know where did we get this from?
>>
>> Should be in the git history.
>
> It's here since:
> [SSB]: add Sonics Silicon Backplane bus support
>
> Maybe bcm43xx does contain sth...

This check was not present in bcm43xx. So I guess specs were updated
and ssb was written basing on updated specs.

-- 
Rafa?
