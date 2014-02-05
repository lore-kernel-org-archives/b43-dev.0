From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 05 Feb 2014 17:57:31 -0600
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
Message-ID: <52F2CFEB.6000307@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/05/2014 04:58 PM, grarpamp wrote:
> For the same core number, is it necessary to update
> the b43 driver when a new microcode is added? Or
> does the API/addressing into the microcode stay
> the same across microcode updates?
>
> ie: Were any updates to the driver needed to support
> the span from say 478.104 to 784.2 of the microcode
> for any of the cores already present in 478.104?
>
> I'm not seeing anything obvious to that effect in the
> short summaries here:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43

Throughout the life of the b43 driver, there have been changes in the microcode 
that required changes in the driver; however all of them predate version 
478.104. With that said, I have not tested anything newer than 666.x. Where did 
you get version 784.2?

Larry
