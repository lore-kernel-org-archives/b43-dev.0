From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 29 May 2017 07:38:43 -0500
Subject: BCM4311 Dropping Connection To Router
In-Reply-To: <DM5PR12MB1545A452F6E51056B4087166B5F30@DM5PR12MB1545.namprd12.prod.outlook.com>
References: <DM5PR12MB1545A452F6E51056B4087166B5F30@DM5PR12MB1545.namprd12.prod.outlook.com>
Message-ID: <8a4f6a36-caa2-99da-b50b-1994206be778@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/28/2017 10:34 PM, l wrote:
> This wireless card will not remain connected to my router.  I am going to use this laptop as a ip camera security server.
> 
> When it boots up I can connect to it via ssh for about 10 minutes or less and then it looses connection to the router.
> 
> Router:
> 
> Netgear Rangemax Wireless-N 150
> 
> Hardware :
> 
> Compaq Presario C700
> 
> # ip a
> 
> 3: wlp1s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UNKNOWN group default qlen 1000
>      link/ether 00:1a:73:90:e6:df brd ff:ff:ff:ff:ff:ff
>      inet 192.168.1.14/24 brd 192.168.1.255 scope global wlp1s0
>         valid_lft forever preferred_lft forever
>      inet6 fe80::21a:73ff:fe90:e6df/64 scope link
>         valid_lft forever preferred_lft forever
> 
> # lspci
> 01:00.0 Network controller: Broadcom Limited BCM4311 802.11b/g WLAN (rev 02)
> 
> # uname -a
> Linux security 4.9.0-3-amd64 #1 SMP Debian 4.9.25-1 (2017-05-02) x86_64 GNU/Linux

I'm not sure if we will be able to help, but we certainly need more information:

1. The connection drop messages from dmesg will be quite helpful.
2. What network management software is the machine running? Does it try to 
remake the connection when it drops? The latter question should be evident in 
the dmesg output.
3. Is that Wireless N 150 router able to handle the 802.11g connection of the 
BCM4311?

Note that wireless will always run into conditions that cause a drop of the 
connection. You may wish to rethink your solution.

Larry
