From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 5 May 2016 17:37:20 +0200
Subject: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?
In-Reply-To: <3Fn.2TId.FHuvjLBV4z.1NAsIY@seznam.cz>
References: <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
 <CACna6rypnsgK4DeMxL6F8jwuFpzYhvG8O_TA1M4A6j8X6Eh5_A@mail.gmail.com>
 <3Fn.2TId.FHuvjLBV4z.1NAsIY@seznam.cz>
Message-ID: <CACna6rx90=u7ZSY6ZXjWw4CicEQR6Ty-iEc_G9ACLL0j9EfJLg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Don't drop ML from To/Cc. It's a bad habit and there are other ppl who
are interested in this and may be able to help as well.

On 5 May 2016 at 17:20, Jan Sobotka <xSobotkaJ@seznam.cz> wrote:
> Hi,
>
> I have problem with command:
> sudo echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
> bash: /sys/bus/pci/drivers/bcma-pci-bridge/new_id: Permission denied
>
> Module bcma is loaded:
> lsmod | egrep bcma
> bcma                   53248  0
>
> than dmesg | egrep "bcma|b43" produce no output.
>
> Do you have some advice for echo "14e4 43ae"... command modification?

Not sure why it happens. Could you try
sudo su
echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
instead?
