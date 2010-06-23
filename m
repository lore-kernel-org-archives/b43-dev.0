From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Wed, 23 Jun 2010 14:42:50 +0200
Subject: Recent results with BCM4312 on Netbook
In-Reply-To: <AANLkTikjzHcT9L472CFJ2LKtOiEUIk2S78_S_s-IxHjl@mail.gmail.com>
	(sfid-20100623_004823_485864_1D673701)
References: <4C20D884.3010501@lwfinger.net>
	<AANLkTikjzHcT9L472CFJ2LKtOiEUIk2S78_S_s-IxHjl@mail.gmail.com>
	(sfid-20100623_004823_485864_1D673701)
Message-ID: <4C22014A.3000102@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Please note that there were some rewrites recently in the kernel
DMA subsystem. b43 does now use the generic DMA interface, which
should work on all busses. I would not rule out an error in
that area, though it's unlikely.

-- 
Greetings Michael.
