From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 22 Jun 2010 13:29:32 -0500
Subject: Recent results with BCM4312 on Netbook
In-Reply-To: <4C20FC9F.8040607@polymtl.ca>
References: <4C20D884.3010501@lwfinger.net> <4C20FC9F.8040607@polymtl.ca>
Message-ID: <4C21010C.2090506@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/22/2010 01:10 PM, William Bourque wrote:
> 
> Interresting information.
> 
> Using "qos=0" and "nohwcrypt=1" effectively fixes the problem I had to
> connect to some access points. I could test it for two AP I knew to be
> wrong and I am now able to connect.
> 
> The strange part is that I was having a similar problem with broadcom
> proprietary driver, it is possible that the misbehave of b43 was messing
> up something in a way that even wl wasn't able to operate then?  All
> modules were unloaded before trying, but I didn't bother to cold reboot
> the notebook.
> It is also a bit weird that the problem was only on some AP.

I had the problem with both my APs. One is a Netgear 802.11n router
running the vendor's firmware with WPA2 encryption, and the other is a
Linksys running openWRT with WPA encryption.

The hardware encryption option might not be needed for WEP, but I have not
tested.

I cannot connect with wl on my machine. In fact, it cannot even scan, but
I'm only interested in its initialization.

Larry
