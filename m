From: Kalle Valo <kvalo@adurom.com>
Date: Tue, 14 Sep 2010 13:17:19 +0300
Subject: cross compiling b43
In-Reply-To: <d8e648ddb50172edd3ef86c6f0e8a287.squirrel@mail.bel.co.in>
	(rramkishorereddy@bel.co.in's message of "Mon\,
	13 Sep 2010 11\:47\:55 +0530")
References: <d8e648ddb50172edd3ef86c6f0e8a287.squirrel@mail.bel.co.in>
Message-ID: <874ods7how.fsf@purkki.adurom.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

rramkishorereddy at bel.co.in writes:

> Hi all,
>
> I was cross compiling b43 for arm architecture. I got 6 .ko files. When i
> insert anyone of those using "insmod" command, I get the error
>
> "insmod: Unknown symbol in module".
>
> how to solve this dependency?

Start from checking dmesg and see what symbols you are missing.

-- 
Kalle Valo
