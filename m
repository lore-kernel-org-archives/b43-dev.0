From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Sun, 28 Aug 2011 19:59:30 +0300
Subject: BCM4321 support
In-Reply-To: <CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
	<CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
	<CA+XFjip4Z7Ua9eVwWsR4t4pWrR1rdEkhVtOS8KE2oJHN1EWLLg@mail.gmail.com>
Message-ID: <CAM0=5GsXuz_Fybuw3rpkHxE3oqNwRLMcc+ZjsgfGHHiRP_ER8w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Aug 27, 2011 at 9:13 PM, G?bor Stefanik <netrolller.3d@gmail.com> wrote:
> I think the device ID is stored in the SPROM. Perhaps your card's
> SPROM is busted.

It seems that you were right, my SPROM is busted:
ssb: WARNING: Using fallback SPROM failed (err -2)
ssb: WARNING: Invalid SPROM CRC (corrupt SPROM)
ssb: Unsupported SPROM revision 0 detected. Will extract v1

I also dumped /sys/devices/pci0000:00/0000:00:1c.1/0000:0c:00.0/ssb_sprom
and it's just zeroes (as in 0x30, not nulls).

Larry, I CC-ed you because I noticed in an earlier message on the lwn
mailing list that you own (or used to own) the exact model of BCM4321
as the one I have now:

0c:00.0 Network controller [0280]: Broadcom Corporation BCM4321
802.11a/b/g/n [14e4:4328] (rev 03)
        Subsystem: Hewlett-Packard Company BCM4321 802.11a/b/g/n
Wireless LAN Controller [103c:1367]

Can anybody with a BCM4321 send me a full SPROM dump from their card
(preferably a HP BCM4321, but I guess any would do)? I want to hack
something up and try fix my card.

Thanks in advance,
Octavian
