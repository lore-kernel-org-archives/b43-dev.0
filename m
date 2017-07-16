From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 16 Jul 2017 13:14:39 -0500
Subject: Getting started with adding module in b43
In-Reply-To: <CY1PR19MB01289C7862143BB3C1A05F1CF2A30@CY1PR19MB0128.namprd19.prod.outlook.com>
References: <CY1PR19MB01289C7862143BB3C1A05F1CF2A30@CY1PR19MB0128.namprd19.prod.outlook.com>
Message-ID: <aca1f354-638e-acbe-0117-023bfdcf9db3@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/16/2017 11:54 AM, Varun Garg wrote:
> Hi all,
> 
> I am having a BCM43142 card. For me everything is ok on windows, on 10 I
> can turn on hotspot with built in utility.
> 
> However, things are very bad on linux, as only broadcom-wl propriety
> drivers are present without AP mode, and wifi hotspot is very important
> to me in college, I have to use windows just because of that.
> 
> Because of this frustration I want to port this device myself. I have
> intermediate programming experience and am willing to do my homework.
> 
> I need help and guidance getting started with the process, a case /
> example on how this has been done with a different propriety module in
> the past would be great.

Varun,

What you wish to do is nearly impossible. The effort to reverse engineer an 
802.11n driver would be considerable. The 802.11g models were difficult; 
however, extending that to N devices was more than what we wanted to do. That is 
the reason that many of the later modules are not covered by b43. Note that 
decompiling any existing driver violates Broadcom's license.

I can suggest two possible solutions to your problem:

(1) Obtain a new wireless NIC for your computer. You would need one whose driver 
is fully compatible with mac80211, and is white-listed by the BIOS in your 
laptop. As you do not state what you have, it is not possible to suggest which 
card to select, but the Intel 7260 or 7265 cards are quite good, and not too 
expensive.

(2) If your laptop has sufficient RAM, disk, and CPU capacity, you could also 
boot Windows 10, and run Linux in a VirtualBox machine. This way, Windows could 
handle setting up the hotspot, and Linux would use the built-in virtual network 
device to access the network. I have needed to use such a configuration in the 
past. There is some overhead, but it works.

Larry
