From: Diego Passos <diegogpassos@gmail.com>
Date: Tue, 18 Jan 2011 18:15:04 -0200
Subject: Rates in ad hoc mode
Message-ID: <AANLkTinVuumK4duzd_SToOFno04DW47nCrSUhd0f3+vT@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I'm using b43 in a Linksys wrt54g router (b43's dmesg output says it's
a broadcom 4712 revision 7). The router runs a stock openwrt image,
using kernel 2.6.32.10. I have an ad hoc network composed of several
nodes.

The driver works fine (very stable), except for the available
transmission rates. It seems I cannot transmit packets using rates
other than 1Mbps. Using a laptop as a sniffer I can only see frames
being sent at 1 Mbps, even if I try to force a different rate with:

# iwconfig wlan0 rate 12M
or
# iwconfig wlan0 rate 12M fixed

The output from dmesg shows that a default rate control algorithm
(minstrel) is loaded whenever I load b43. At first, I thought minstrel
could be forcing the 1 Mbps rate, so I checked the debug info
available in /sys/kernel/debug/ieee80211/phy0/stations/*/rc_stats. The
file, which should show information about all rates, shows only one
entry (for 1 Mbps).

If I change the mode to Managed, all usual rates are available
(including in minstrel debug info) and my sniffer shows frames being
transmitted at other rates.

My question is: is this a limitation of the driver (in ad hoc mode) or
am I missing something (such as a new driver version or a bad
configuration)? Also, is there a way of changing or even disabling (on
run-time) the rate control algorithm?

Thanks in advance,

Diego
