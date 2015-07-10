From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 10 Jul 2015 16:36:19 -0500
Subject: Innaccurate information, or help needed
In-Reply-To: <CAH2FPPXqGZJyJVygCzzivzC1zUjLRii5pugKJb6SBav+FxmOrw@mail.gmail.com>
References: <CAH2FPPWxyUGbyUm0YXcEKdjrjZqLot6pCD9Y4--T=68=OLHnyA@mail.gmail.com>	<55955B20.4060503@lwfinger.net>
 <CAH2FPPXqGZJyJVygCzzivzC1zUjLRii5pugKJb6SBav+FxmOrw@mail.gmail.com>
Message-ID: <55A03AD3.3090103@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/09/2015 11:01 AM, Jonathan Burgess wrote:
> The drivers on the Lenovo website were, to the best of my knowledge,
> the broadcom manufactured drivers. The document at
> [https://download.lenovo.com/ibmdl/pub/pc/pccbbs/mobiles/gawb04ww.txt]
> explains the driver I was using under the Windows operating system. I
> am not aware of any way to make it function on Linux and, therefore,
> haven't had the oppurtunity to have it taint my kernel.

 From the way you wrote the previous message, I thought you had found a Linux 
driver on the Lenovo website. Obviously, you have only found Windows drivers. 
Some of them will work on Linux by using ndiswrapper. It can be quite difficult 
to get setup and may not work.

According to https://wireless.wiki.kernel.org/en/users/Drivers/b43, your device 
is handled by the Broadcom proprietary driver wl.

Larry
