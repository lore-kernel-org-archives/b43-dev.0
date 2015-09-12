From: Stuart Longland <stuartl@longlandclan.id.au>
Date: Sun, 13 Sep 2015 09:14:26 +1000
Subject: b43 driver constantly switching bands
Message-ID: <55F4B1D2.7030106@longlandclan.id.au>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

I've noticed lately (well, for the past few months) that my laptop's
WIFI transfer is jerky in nature.  Streams come in bursts with regular
pauses.  Particularly, it is noticeable when using SSH.  I've put up
with it for a while and I'm not seeing any dropped packets (according to
ifconfig), but it is getting annoying.

The wireless device in use is this one:
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4322 802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
>         Subsystem: Apple Inc. AirPort Extreme [106b:008d]
>         Flags: bus master, fast devsel, latency 0, IRQ 21
>         Memory at d3100000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 3
>         Capabilities: [58] Vendor Specific Information: Len=78 <?>
>         Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
>         Capabilities: [d0] Express Endpoint, MSI 00
>         Capabilities: [100] Advanced Error Reporting
>         Capabilities: [13c] Virtual Channel
>         Capabilities: [160] Device Serial Number b6-b7-6c-ff-ff-83-00-23
>         Capabilities: [16c] Power Budgeting <?>
>         Kernel driver in use: b43-pci-bridge
>         Kernel modules: ssb
and I'm running kernel 4.0.5.

In my kernel logs, I see the following:
> [500292.173219] b43-phy0 debug: Switching to 2.4 GHz band
> [500292.553212] b43-phy0 debug: Switching to 5 GHz band
> [500292.736206] b43-phy0 debug: Switching to 2.4 GHz band
> [500293.114331] b43-phy0 debug: Switching to 5 GHz band
> [500293.297317] b43-phy0 debug: Switching to 2.4 GHz band
> [500293.679330] b43-phy0 debug: Switching to 5 GHz band
> [500293.864300] b43-phy0 debug: Switching to 2.4 GHz band
> [500294.245288] b43-phy0 debug: Switching to 5 GHz band
> [500294.429221] b43-phy0 debug: Switching to 2.4 GHz band
> [500294.811307] b43-phy0 debug: Switching to 5 GHz band
> [500294.991241] b43-phy0 debug: Switching to 2.4 GHz band
> [500295.378311] b43-phy0 debug: Switching to 5 GHz band
> [500295.561304] b43-phy0 debug: Switching to 2.4 GHz band
> [500295.941615] b43-phy0 debug: Switching to 5 GHz band
> [500296.124338] b43-phy0 debug: Switching to 2.4 GHz band
> [500296.503297] b43-phy0 debug: Switching to 5 GHz band
> [500296.688340] b43-phy0 debug: Switching to 2.4 GHz band
> [500297.066287] b43-phy0 debug: Switching to 5 GHz band
> [500297.251221] b43-phy0 debug: Switching to 2.4 GHz band
> [500297.629224] b43-phy0 debug: Switching to 5 GHz band
> [500297.813290] b43-phy0 debug: Switching to 2.4 GHz band
> [500298.194217] b43-phy0 debug: Switching to 5 GHz band
> [500298.377228] b43-phy0 debug: Switching to 2.4 GHz band
> [500298.758313] b43-phy0 debug: Switching to 5 GHz band
> [500298.941311] b43-phy0 debug: Switching to 2.4 GHz band
> [500299.323646] b43-phy0 debug: Switching to 5 GHz band
> [500299.510270] b43-phy0 debug: Switching to 2.4 GHz band
> [500299.889294] b43-phy0 debug: Switching to 5 GHz band
> [500300.073310] b43-phy0 debug: Switching to 2.4 GHz band
> [500300.453321] b43-phy0 debug: Switching to 5 GHz band
> [500300.637343] b43-phy0 debug: Switching to 2.4 GHz band

So it is switching between the 2.4GHz and 5GHz bands *a lot*.  The
access point is a Cisco WAP4410N with version 2.0.7.4 firmware.  I don't
seem to have the same problem on other WIFI clients, just this MacBook.

Is there a reason why b43 is switching so rapidly or a way to get it to
pick a band and stick to it?

Regards,
-- 
Stuart Longland (aka Redhatter, VK4MSL)

I haven't lost my mind...
  ...it's backed up on a tape somewhere.

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150913/6dcd46f9/attachment.sig>
