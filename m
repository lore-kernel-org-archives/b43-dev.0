From: Stuart Longland <stuartl@longlandclan.id.au>
Date: Fri, 6 May 2016 04:11:40 +1000
Subject: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?
In-Reply-To: <CACna6rx90=u7ZSY6ZXjWw4CicEQR6Ty-iEc_G9ACLL0j9EfJLg@mail.gmail.com>
References: <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
 <CACna6rypnsgK4DeMxL6F8jwuFpzYhvG8O_TA1M4A6j8X6Eh5_A@mail.gmail.com>
 <3Fn.2TId.FHuvjLBV4z.1NAsIY@seznam.cz>
 <CACna6rx90=u7ZSY6ZXjWw4CicEQR6Ty-iEc_G9ACLL0j9EfJLg@mail.gmail.com>
Message-ID: <572B8CDC.20204@longlandclan.id.au>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/05/16 01:37, Rafa? Mi?ecki wrote:
>> sudo echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
>> > bash: /sys/bus/pci/drivers/bcma-pci-bridge/new_id: Permission denied
> Not sure why it happens

echo "14e4 43ae" | sudo tee /sys/bus/pci/drivers/bcma-pci-bridge/new_id

That should work.  The reason why the other didn't work is because you
were running the 'echo' command as root, but then the re-direction was
being done by a shell that was running as a user.

`sudo` is not a magic shell built-command, it's just a suid-root binary,
and merely passes on the arguments the shell gives it.
-- 
Stuart Longland (aka Redhatter, VK4MSL)

I haven't lost my mind...
  ...it's backed up on a tape somewhere.

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160506/93caabd4/attachment.sig>
