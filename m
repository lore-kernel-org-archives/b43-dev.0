From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 9 Mar 2021 16:26:46 -0600
Subject: [b43] ssh bug
In-Reply-To: <CAM2RGhR89fcuPwkNxmiynU6qocjM85ROBA0M+Fw3y9VR-Mh2Pw@mail.gmail.com>
References: <CAM2RGhR89fcuPwkNxmiynU6qocjM85ROBA0M+Fw3y9VR-Mh2Pw@mail.gmail.com>
Message-ID: <b99457e9-c562-45a8-40f8-fafbbda8fd2c@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Evan Foss <evanfoss@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 3/9/21 6:18 AM, Evan Foss wrote:
> Hi B43-dev,
> 
> I am having trouble with the wifi card in my macbook pro 2012. It's a
> BCM4331 and it hangs on ssh sessions.
> 
> I noticed it documented here.
> https://wiki.archlinux.org/index.php/broadcom_wireless#SSH_freeze_for_BCM4331_with_b43
> 
> Is there some testing I could contribute to help fix this?

Evan,

I do not have that card, thus I cannot test with that chip.

Given the age of the chips driven by b43, it is hard to imagine that there are 
any undisclosed proprietary secrets buried in the code. Broadcom should open 
source these old drivers.

What are the symptoms of the frozen sessions? Is there anything in particular 
that you are doing when it freezes? Does the freeze require rebooting either of 
the machines in question? Is anything logged in the dmesg output of either machine?

One useful test would be to run Wireshark to capture the data on the network 
interface. That capture file might have information that you would not want to 
share, but you should be able to supply only the last few packets.

A macbook of that vintage should be able to run wl. That may be your best option.

Larry
