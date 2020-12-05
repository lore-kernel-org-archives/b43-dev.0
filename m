From: Chris Murphy <lists@colorremedies.com>
Date: Fri, 4 Dec 2020 23:31:20 -0700
Subject: where to find b43 firmware?
Message-ID: <CAJCQCtQH3ew2-Nmd_ybyx9AXX4=77tAfnZSr_TW7XRtvtn8sxg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

When I boot kernel 5.10-rc6, I see this message:

[    9.850583] b43-phy0 ERROR: You must go to
https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware
and download the correct firmware for this driver version. Please
carefully read all instructions on this website.

When I go to that URL, there's no download for firmware or any
reference how to find out where to download it from. It's a dead end.

This page includes:
You need to have firmware files (usually in /lib/firmware/) so
b43(legacy) can upload them to the card and run properly.

Sure, OK. But how do I do that? There isn't even a mention of
b43-fwcutter on this page.


Thanks,

-- 
Chris Murphy
