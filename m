From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 20 Feb 2011 13:30:36 -0600
Subject: bcm4322 success (WPA2)!
In-Reply-To: <20110220182541.GP6696@helfmeier.de>
References: <201101032121.10454.christoph.thielecke@gmx.de>	<201102201340.52880.christoph.thielecke@gmx.de>	<AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>	<201102201431.45988.christoph.thielecke@gmx.de>	<AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
	<20110220182541.GP6696@helfmeier.de>
Message-ID: <4D616BDC.6080504@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/20/2011 12:25 PM, Clemens Helfmeier wrote:
> Hello Developers,
>
> I have just tried the current wireless-testing git tree with my bcm4322 device:
>
> # lshw
> 0c:00.0 Network controller [0280]: Broadcom Corporation BCM4322 802.11a/b/g/n
>      Wireless LAN Controller [14e4:432b] (rev 01)
>
> # dmesg shows:
> [   11.358762] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
> [   11.400231] b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 4
> [   11.400257] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 3
>
> I had to apply this patch to b43-fwcutter in order to extract the firmware:
> http://lists.infradead.org/pipermail/b43-dev/2010-July/000225.html
>
> Using WPA2, the connection is very stable, no connection break downs so far.
>
> My dmesg log shows quite a lot of error messages (approx every 7 seconds in
> idle and more often when traffic is high):
> [ 4015.044435] b43-phy0 ERROR: PHY transmission error
> [ 4021.910720] b43-phy0 ERROR: PHY transmission error
> [ 4028.866892] b43-phy0 ERROR: PHY transmission error
>
> Thanks for your efforts to get my hardware working!

The attached patch should fix the PHY transmission errors, which happens 
whenever the rate control code tries to set an OFDM rate. With the patch, those 
rates will not work, but no errors will be printed.

You can also lock the rate at 11M (iwconfig wlan0 rate 11M) to get rid of those 
errors.

Larry

-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: b43_tx_set_control_word1
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110220/581de113/attachment.ksh>
