From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 Nov 2015 07:04:00 +0100
Subject: Broadcom 4330 and Intel Edison
In-Reply-To: <D25E6E76.15890%max.j.domeika@intel.com>
References: <D25E6E76.15890%max.j.domeika@intel.com>
Message-ID: <CACna6rxU-s7UKefKfPwv5ZwBQxv5_A650pbsTzaRuKv6EuHeTg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 3 November 2015 at 23:00, Domeika, Max J <max.j.domeika@intel.com> wrote:
> We are trying to get the Intel Edison which uses the Broadcom 4330 to act as both an AP and client at the same time. Iw list seems to suggest it is possible, but we haven?t figured out the correct process to do so or even if the underlying kernel will allow it (using ubilinux 3.10.17 and the driver is bcm43340-mod-1.141-r47.

It's some out-of-tree driver and BCM4330 is most likely a FullMAC
chip. It's not really related to b43 driver which support SoftMAC
devices.

-- 
Rafa?
