From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 29 Feb 2016 10:30:19 -0600
Subject: Is Larry's reverse-engineering effort dead?
In-Reply-To: <CA+XFjiqzyPpPmYg6OQm2bR0nejX1-Tz8B-58HsgvApKf1jAKXw@mail.gmail.com>
References: <CA+XFjiqzyPpPmYg6OQm2bR0nejX1-Tz8B-58HsgvApKf1jAKXw@mail.gmail.com>
Message-ID: <56D4721B.80607@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/29/2016 05:24 AM, G?bor Stefanik wrote:
> Hi All,
>
> I recently got my HP laptop replaced under warranty. Unfortunately,
> while the old one had a Realtek wireless card with a supported
> mainstream Linux driver, this one came with the dreaded BCM43142
> (LCN40-PHY), which neither b43 nor brcmsmac supports.
>
> Since I have previously implemented support for LP-PHY in b43, I
> thought about having a go at implementing this PHY. However, no specs
> appear to exist for this chip - in fact, it looks like no new specs
> were posted since the N-PHY ones back in 2010.
>
> Is the reverse engineering effort still ongoing somewhere? I've seen
> some mail on the list about AC-PHY development starting, which is also
> not on the specs wiki.

Yes, my reverse-engineering effort is dead. There have never been any specs 
published by Broadcom. Those in the specs wiki came from an SSB driver that 
Michael acquired, and from reverse-compiling various MIPS binaries. That is 
really hard work, and I have little enthusiasm for any further efforts in that 
direction.

Rafal has done some reverse engineering by dumping the MMIO communications. With 
the LCN40 devices, that is likely the only way to go.

Larry
