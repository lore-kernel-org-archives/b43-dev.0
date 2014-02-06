From: grarpamp <grarpamp@gmail.com>
Date: Thu, 6 Feb 2014 04:01:15 -0500
Subject: Need to match driver to microcode?
In-Reply-To: <52F33840.4060208@lwfinger.net>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
 <52F33840.4060208@lwfinger.net>
Message-ID: <CAD2Ti2-W97qW40LoXFBNqcPXQ+vA7V7sAnZ_ZerxiknRNuF5Dg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Feb 6, 2014 at 2:22 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> The Broadcom devices consist of a number of different individual units with
> an interconnect. These units are the cores. The firmware files needed are
> determined by the revision number of the 802.11 or PHY core. As Broadcom
> develops new versions of the PHY core, the revision numbers get incremented.
> If you have a PHY core newer than anything supported by b43, it would not
> matter if the firmware for that chip is available or not, b43 would not
> work.

I think I see this as ucodeN N based conditionals in the b43 driver.
Guess the driver probes the card to find the core rev Ns then
picks the matching Ns out of the big insmodded set of all N and
pushes them to the card.

I should look for a way to print the individual core revs to
the [name][N].fw files picked by b43 when loaded. Would make
comparing any fwcutter output changes from different apsta.o's
for the card you have a bit more clear. Should I expect which,
if any, of the x's labeled below to match the N's above?

Linux version 3.12.9
b43-phy0: Broadcom 43xx WLAN found (core revision x)
b43-phy0: Found PHY: Analog x, Type x (LP), Revision x
b43-phy0: Loading firmware version xxx.x (xxxx-xx-xx xx:xx:xx)

> Yes, there are newer versions of ucodeN, but it does not matter unless
> someone does the reverse engineering to see what is needed to make the
> device work.


>>> Ah, I know it by a different number.
>> What number is that?
> 6.30.163.46

that apsta file surrounds todays 784.2...

> There is no one to one relationship. Both are internal Broadcom
> designations.

... got it thx.

> No. The firmware is just a black box.

Hopefully these makers will someday stop software
secrets. They sell primary hardware, not sw.
