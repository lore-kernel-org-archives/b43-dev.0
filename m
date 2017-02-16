From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 16 Feb 2017 13:50:36 -0600
Subject: Problems with wireless on an iBook G4 laptop
In-Reply-To: <4640d642-cf07-7e75-dbea-8228c1095853@gmail.com>
References: <4640d642-cf07-7e75-dbea-8228c1095853@gmail.com>
Message-ID: <18c87a77-c588-ce7d-4764-8e1f5615b8b7@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/16/2017 12:32 PM, Vincenzo De Florio wrote:
> ADDRCONF(NETDEV_UP): wlan0: link is not ready

I have a PowerBook G4 Aluminum on which I run Mint 11. My internal wireless is 
broken, but I do use it with a PCMCIA version of the BCM4318.

As noted above, your wireless device is wlan0, not eth1. You can check that with 
the iwconfig command. Otherwise everything looks normal.

Larry
