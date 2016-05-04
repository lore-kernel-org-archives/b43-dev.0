From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 May 2016 20:42:00 +0200
Subject: Planned Support for BCM 43162 [14e4:43ae] rev 02 ?
In-Reply-To: <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
References: <75r.2THk.1aVrEGdo1ry.1N96yR@seznam.cz>
Message-ID: <CACna6rypnsgK4DeMxL6F8jwuFpzYhvG8O_TA1M4A6j8X6Eh5_A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

On 30 April 2016 at 10:38, Jan Sobotka <xSobotkaJ@seznam.cz> wrote:
> is planned to add support for BCM 43162 [14e4:43ae] to b43 in near future? Unfortunately I bought the notebook with this WLAN card. Bug reported here https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1576815 I'm willing to help, for example with testing.

Noone is working on new hw support right now, but essential question
is what PHY is used in this chipset. Can you load bcma for this card
and get us bcma (and potentially b43) logs?
modprobe bcma
echo "14e4 43ae" > /sys/bus/pci/drivers/bcma-pci-bridge/new_id
dmesg | egrep "bcma|b43"

-- 
Rafa?
