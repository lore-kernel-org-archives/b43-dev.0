From: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 29 Feb 2016 12:24:32 +0100
Subject: Is Larry's reverse-engineering effort dead?
Message-ID: <CA+XFjiqzyPpPmYg6OQm2bR0nejX1-Tz8B-58HsgvApKf1jAKXw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi All,

I recently got my HP laptop replaced under warranty. Unfortunately,
while the old one had a Realtek wireless card with a supported
mainstream Linux driver, this one came with the dreaded BCM43142
(LCN40-PHY), which neither b43 nor brcmsmac supports.

Since I have previously implemented support for LP-PHY in b43, I
thought about having a go at implementing this PHY. However, no specs
appear to exist for this chip - in fact, it looks like no new specs
were posted since the N-PHY ones back in 2010.

Is the reverse engineering effort still ongoing somewhere? I've seen
some mail on the list about AC-PHY development starting, which is also
not on the specs wiki.

Thanks,
G?bor Stefanik
