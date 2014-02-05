From: grarpamp <grarpamp@gmail.com>
Date: Wed, 5 Feb 2014 17:58:16 -0500
Subject: Need to match driver to microcode?
Message-ID: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

For the same core number, is it necessary to update
the b43 driver when a new microcode is added? Or
does the API/addressing into the microcode stay
the same across microcode updates?

ie: Were any updates to the driver needed to support
the span from say 478.104 to 784.2 of the microcode
for any of the cores already present in 478.104?

I'm not seeing anything obvious to that effect in the
short summaries here:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/wireless/b43
