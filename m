From: Maxime Vincent <maxime.vince@gmail.com>
Date: Mon, 22 Aug 2011 13:16:32 +0200
Subject: [QUESTION] 4331 support
Message-ID: <CACBz148HiqaUWqxNOddxhTH5qYUKTg6Gk6gk7W2Mb_t7jRX=nQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dear b43-list,

I'm sorry if this is a noobish question, or asking this kind of questions is
not done.
I'm not really familiar with dev mailing lists.
I'm new to kernel development, not new to linux.

I was wondering what the status of support for the 4331 wifi chipset was?
As I can see there's already quite some code for the 4331 chipset, but I
can't really make up from that if it's supposed to work or not, or maybe
partially?

I have compiled latest linux-next kernel including the b43 driver, extracted
firmware, but I can't seem to see an interface registering.
Only thing I can see in dmesg:
Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID:  FW13 ]

Whereafter I expect it to load the firmware from /lib/firmware, but it
doesn't...

I'm running Arch Linux, with latest linux-next git kernel on a recent
Macbook Pro 8,1

I'm willing to help with anything that can help the development of this
driver.
Many thanks for any info you can provide me with!

Maxime Vincent
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110822/58e84c5d/attachment.html>
