From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed, 04 Nov 2015 23:25:03 +0100
Subject: Broadcom 4330 and Intel Edison
In-Reply-To: <CACna6rxU-s7UKefKfPwv5ZwBQxv5_A650pbsTzaRuKv6EuHeTg@mail.gmail.com>
References: <D25E6E76.15890%max.j.domeika@intel.com>
 <CACna6rxU-s7UKefKfPwv5ZwBQxv5_A650pbsTzaRuKv6EuHeTg@mail.gmail.com>
Message-ID: <563A85BF.7050900@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/04/2015 07:04 AM, Rafa? Mi?ecki wrote:
> On 3 November 2015 at 23:00, Domeika, Max J <max.j.domeika@intel.com> wrote:
>> We are trying to get the Intel Edison which uses the Broadcom 4330 to act as both an AP and client at the same time. Iw list seems to suggest it is possible, but we haven?t figured out the correct process to do so or even if the underlying kernel will allow it (using ubilinux 3.10.17 and the driver is bcm43340-mod-1.141-r47.
> 
> It's some out-of-tree driver and BCM4330 is most likely a FullMAC
> chip. It's not really related to b43 driver which support SoftMAC
> devices.
> 
bcm4330 is supported by the Linux upstream driver brcmfmac [0], you
could take brcmfmac from backports [1] and try if that driver supports
your requirements. BCM43340 seams to be a different chip, but it is also
supported by brcmfmac.

Hauke

[0]: https://wireless.wiki.kernel.org/en/users/drivers/brcm80211
[1]: http://drvbp1.linux-foundation.org/~mcgrof/rel-html/backports/
