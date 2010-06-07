From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 07 Jun 2010 14:42:43 -0500
Subject: BCM5354
In-Reply-To: <4C0D40C2.7050409@sephix.com>
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net>
	<4C0D40C2.7050409@sephix.com>
Message-ID: <4C0D4BB3.7070607@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/07/2010 01:56 PM, Robert Hazbun wrote:
> Interesting. So, this give me hope that I've done something wrong. When
> I try to enable AP mode using iwconfig, I simply get an error.
> 
> Larry, the company I work for is willing to fund b43 work on the BCM5354
> and have it released to the public. Do you know who has done the initial
> work on the 5354, and who would be the right person to contact?

As Michael Buesch says, there may be parts of the 5354 spec that have
not yet been implemented in b43. I am the person that did most of the LP
PHY reverse engineering. The person that did the coding from the
resulting "specs" was Gabor Stefanik, who reads this list. I will review
the 5354-specific code in the latest driver to see if changes are needed.

I suspect that the problem is with iwconfig, which uses the WEXT
interface that is only partially implemented.  I wrote the following for
the openSUSE Wireless Forum. It will not wok directly with openWRT, but
it should give you the idea.

=================================================

This article might be entitled "How to convert an $800 laptop into a $40
wireless router", which indicates why doing this might not be desirable.
There are, however, at least two cases where this might make sense: (1)
You want to provide or test some feature that is not supplied by your
AP. One example is 802.11a (5 GHz) channels. (2) your need for an AP is
temporary such as network sharing of a 3G broadband modem.

To accomplish the task, several pieces of software will be needed
including hostapd, a DHCP server for the AP's clients, and an iptables
rules for Network Address Translation (NAT). The requirements for these
are discussed in turn.

I. Hostapd

Hostapd runs in user space and interacts with the device driver to
handle most of the things that an AP does, such as transmitting of
beacons, authentication, etc. The version included with the "hostapd"
package of openSUSE 11.1 (0.5.10) works with a limited number of devices
and drivers. For modern drivers that use mac80211, a newer version is
needed, which can be downloaded from hostapd: IEEE 802.11 AP, IEEE
802.1X/WPA/WPA2/EAP/RADIUS Authenticator. Building this will require
that the make, libnl, libnl-devel, openssl-devel and gcc packages are
installed. I recommend installing the package from the repository and
then doing a download, make and install of the later version. If your
kernel is older than 2.6.28 (check uname -r), then you will need the
compat-wireless code that is downloaded from Download - Linux Wireless.
For this option, you will also need to install the kernel source, and
prepare it for use.
To prepare the source, issue the following commands:
Code:

cd /usr/src/linux
sudo cp /proc/config.gz .
sudo gunzip config.gz
sudo cp config .config
sudo make prepare

Configuration of hostapd is accomplished with a configuration file named
hostapd.conf. There are a number of options in that file, but a working
AP with WPA2 encryption can be setup with the following:

Code:

interface=wlan0
driver=nl80211
hw_mode=g
channel=1
ssid=test
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_pairwise=CCMP
wpa_passphrase=123456789

II. Dhcpd

The standard dhcpd package in openSUSE 11.1 works just fine. To use it,
you need to modify its configuration file dhcpd.conf. Again, there are a
number of options available, but you can get a working DHCP server with
the following:

Code:

option domain-name-servers 192.168.1.1;
default-lease-time 600;
max-lease-time 7200;
ddns-update-style none; ddns-updates off;
subnet 192.168.0.0 netmask 255.255.255.0 {
        range 192.168.0.200 192.168.0.229;
        option subnet-mask 255.255.255.0;
        option broadcast-address 192.168.0.255;
        option routers 192.168.0.1;
}

The above configuration assumes that the AP will be connected to the
outside world with an IP address of 192.168.1.X and that the AP's
clients will have addresses 192.168.0.X. If other addresses are used,
adjust the above info accordingly.

III. Iptables Network Address Translation rules

For this example, the NAT rules will be only those necessary to get the
AP operational. Although iptables is used to write firewalls, the only
protection in this code is to allow only established connections. The
rules are shown in the script below.

IV. A script to start and stop the Access Point

The following code will start and stop the AP. To make any changes
easier, the locations of the various utilities, the interface names, and
the IP address to be used are defined by symbols at the start of the
script. I also use configuration files that are stored in root's home
directory, not in /etc as would normally be done. This script must be
executable and be run as root.

Code:

#!/bin/sh
# Script to start/stop a hostapd-based access point
#
# Symbols for needed programs

IPTABLES=/usr/sbin/iptables
IFCONFIG=/sbin/ifconfig
DHCPD=/usr/sbin/dhcpd
HOSTAPD=/usr/local/bin/hostapd

# Symbols for internal and external interfaces

NET_INT=wlan0
NET_EXT=eth0

# IP address for the AP

INT_ADDR=192.168.0.1

case "$1" in
start)
        echo "Starting AP mode for $NET_INT at address $INT_ADDR"
        # Disable packet forwarding
        echo 0 > /proc/sys/net/ipv4/ip_forward
        # Stop any existing hostapd and dhcpd daemons
        killproc hostapd
        killproc dhcpd
        #Set up forwarding
        $IPTABLES -t nat -A POSTROUTING -o $NET_EXT -j MASQUERADE
        $IPTABLES -A FORWARD -i $NET_EXT -o $NET_INT -m state \
		--state RELATED,ESTABLISHED -j ACCEPT
        $IPTABLES -A FORWARD -i $NET_INT -o $NET_EXT -j ACCEPT
        # Enable packet forwarding
        echo 1 > /proc/sys/net/ipv4/ip_forward
        # Get the internal interface in the right state
        $IFCONFIG $NET_INT down
        $IFCONFIG $NET_INT up
        $IFCONFIG $NET_INT $INT_ADDR
        # dhcpd needs to have a leases file available - create it if needed
        if [ ! -f /var/lib/dhcp/db/dhcpd.leases ]; then
                touch /var/lib/dhcp/db/dhcpd.leases
        fi
        # Bring up the DHCP server
        $DHCPD -cf /root/dhcpd.conf $NET_INT
        # Bring up hostapd
        $HOSTAPD -B /root/hostapd.conf
        ;;
stop)
        echo "Stopping AP mode on $NET_INT"
        # Stop hostapd and dhcpd daemons
        killproc hostapd
        killproc dhcpd
        ;;
*)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

=================================================

Larry
