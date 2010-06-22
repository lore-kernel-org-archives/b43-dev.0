From: William Bourque <william.bourque@polymtl.ca>
Date: Tue, 22 Jun 2010 14:10:39 -0400
Subject: Recent results with BCM4312 on Netbook
In-Reply-To: <4C20D884.3010501@lwfinger.net>
References: <4C20D884.3010501@lwfinger.net>
Message-ID: <4C20FC9F.8040607@polymtl.ca>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org




> My first discovery is that if PIO mode is to be used, it is not sufficient
> to load the module with the "pio=1" option, but that both "qos=0" and
> "nohwcrypt=1" options must also be used, at least for WPA/WPA2 networks.
> No other combination works. In addition, the automatic failover to PIO
> mode does not work unless those two options were used when the module was
> loaded. Thus both of the following work:
>
> modprobe b43 pio=1 qos=0 nohwcrypt=1
> modprobe b43 qos=0 hwcrypt=1

Interresting information.

Using "qos=0" and "nohwcrypt=1" effectively fixes the problem I had to 
connect to some access points. I could test it for two AP I knew to be 
wrong and I am now able to connect.

The strange part is that I was having a similar problem with broadcom 
proprietary driver, it is possible that the misbehave of b43 was messing 
up something in a way that even wl wasn't able to operate then?  All 
modules were unloaded before trying, but I didn't bother to cold reboot 
the notebook.
It is also a bit weird that the problem was only on some AP.

Thank you

- William
