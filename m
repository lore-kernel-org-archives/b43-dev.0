From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 14 Aug 2012 14:29:43 -0500
Subject: Packet loss on bcm4331
In-Reply-To: <502AA1F4.7090607@gwright.org.uk>
References: <502AA1F4.7090607@gwright.org.uk>
Message-ID: <502AA727.8080607@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/14/2012 02:07 PM, George Wright wrote:
> I have a MacBook with a bcm4331 chip which mostly works in Linux (Fedora
> 17 w/kernel 3.5.1), but I'm noticing horrible packet loss and throughput
> a lot of the time.
>
> The setup is basically a small apartment with an 802.11bgn router
> sitting in the living room; I've had the laptop sit directly on top of
> the router and run ping to another computer wired directly into the
> access point and experienced 75% packet loss. File transfers are
> experiencing throughput in the region of 200kB/s to 800kB/s. Oddly
> enough, the amount of packet loss is significantly reduced if I'm
> connected in my bedroom (~20 feet from the router and with a couple of
> walls in between). I've also experienced the same problems with my
> backup wireless router (a WRT54GL running dd-wrt).

In b43, power management of 802.11n devices has never been implemented in the 
fullest form. Thus, it is likely that the gain setting is too high when you are 
close to the AP and the resulting distortion is causing failures.

> By comparison, on OS X I get 0% packet loss and throughput in the region
> of 2MB-3MB/s.

As Broadcom knows the specs for the device, they could get it right. We have to 
rely on reverse engineering.

--snip--

> I'm loading the b43 module with the following parameters:
>
> options b43 nohwcrypt=1 qos=0 hwpctl=1
>
> I've also tried it with hwpctl=0 to no avail.
>
> Can anyone suggest what may be going on here?

It is unlikely that any of the options will make any difference in this case..

Larry
