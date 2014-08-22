From: Igor Korot <ikorot01@gmail.com>
Date: Thu, 21 Aug 2014 20:20:47 -0700
Subject: B43 driver problem
Message-ID: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, ALL,
I hope this list is still alive. ;-)
I'm using Gentoo and recently I acquired a DELL laptop with the
Broadcom wireless card.

I successfully installed the system on it (using kernel version
3.12.20), but I can't make the Broadcom driver work.

This is what I have:

[code]
dmesg | grep -i -e b43 -e broad -e firm | less:
[    1.346589] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[    1.363251] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 6, Type 5
(LP), Revision 1)
[    1.364925] b43: probe of ssb0:0 failed with error -95
[    1.366477] Broadcom 43xx driver loaded [ Features: PL ]
[/code]

Now does this card supported by linux or it is work in progress or?
I can upgrade the kernel as its not a big deal, I just want to make
sure that I will have a working environment.

Thank you.
