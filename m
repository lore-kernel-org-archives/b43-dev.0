From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 05 Feb 2014 19:50:45 -0600
Subject: Need to match driver to microcode?
In-Reply-To: <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
Message-ID: <52F2EA75.3080400@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/05/2014 06:54 PM, grarpamp wrote:
> On Wed, Feb 5, 2014 at 6:57 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> Throughout the life of the b43 driver, there have been changes in the
>> microcode that required changes in the driver; however all of them predate
>> version 478.104.
>
> So from 478.104 through 666.2 b43 driver stayed
> the same in relation to simply cutting, dropping
> in and working with any of the 7 new microcodes
> post 478.104?

If you had one of the newer cores, then you needed newer firmware to get the 
correct file, but the older ones worked. However, I should never trust my 
memory. The TX and RX headers changed with firmware version 598.314. The change 
in the driver was introduced with commit 17030f4 in such a way that the older 
firmware versions still worked.

> Can you link to a pre 478.104 example from the repo?
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43

The two commits are at the bottom of the page 
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43?ofs=200.
>
>> With that said, I have not tested anything newer than
>> 666.x. Where did you get version 784.2?
>
> You added it to fwcutter here... :)
>
> http://bues.ch/gitweb?p=b43-tools.git;a=commit;h=f9ea2d59b33b552994a9c7ad3ca8fa1ef9992b95

Ah, I know it by a different number.

Larry
