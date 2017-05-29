From: l <sexelex@hotmail.com>
Date: Mon, 29 May 2017 03:34:16 +0000
Subject: BCM4311 Dropping Connection To Router 
Message-ID: <DM5PR12MB1545A452F6E51056B4087166B5F30@DM5PR12MB1545.namprd12.prod.outlook.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

This wireless card will not remain connected to my router.  I am going to use this laptop as a ip camera security server.  

When it boots up I can connect to it via ssh for about 10 minutes or less and then it looses connection to the router.  

Router:

Netgear Rangemax Wireless-N 150

Hardware :

Compaq Presario C700

# ip a

3: wlp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UNKNOWN group default qlen 1000
    link/ether 00:1a:73:90:e6:df brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.14/24 brd 192.168.1.255 scope global wlp1s0
       valid_lft forever preferred_lft forever
    inet6 fe80::21a:73ff:fe90:e6df/64 scope link 
       valid_lft forever preferred_lft forever

# lspci
01:00.0 Network controller: Broadcom Limited BCM4311 802.11b/g WLAN (rev 02)

# uname -a
Linux security 4.9.0-3-amd64 #1 SMP Debian 4.9.25-1 (2017-05-02) x86_64 GNU/Linux
