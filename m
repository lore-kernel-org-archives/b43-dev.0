From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 24 Jun 2014 17:48:04 +0200
Subject: Unable to use b43 using a BCM43222 mini-PCI
In-Reply-To: <53A99571.9020805@home108.com>
References: <53A99571.9020805@home108.com>
Message-ID: <CACna6rwzFMonQwv1f=+xQ8ce+DN1LS66UBn_Uq9KT1LqkznWKQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 24 June 2014 17:12, Camille Prevost <cam@home108.com> wrote:
> I write to you because I despair of not being able to run the b43 driver
> with a BCM43222 mini-PCI card mounted on an Alix Board (feat. AMD Geode
> processor : http://www.pcengines.ch/alix.htm). The aim is to make a wifi
> access point using hostapd.

You need kernel 3.8, because 14e4:4350 wasn't in ssb PCI IDs earlier.

You may also try this trick:
echo "14e4 4350" > /sys/bus/pci/drivers/b43-pci-bridge/new_id
but I don't remember how well b43 support for BCM43222 was back in 3.2.
