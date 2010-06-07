From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 07 Jun 2010 13:48:22 -0500
Subject: BCM5354
In-Reply-To: <4C0D3B89.7060600@sephix.com>
References: <4C0D3B89.7060600@sephix.com>
Message-ID: <4C0D3EF6.3040908@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/07/2010 01:33 PM, Robert Hazbun wrote:
> Hello all,
> 
> I currently work for a company that is using OpenWRT, with linux 2.4, on
> a BCM5354. We really want to move to OpenWRT with linux 2.6 using the
> b43 driver on this chip. Initial test results show that b43 seems to
> work in client / Adhoc mode, but not in AP mode. Unfortunately, I have
> been unable to ascertain the status of the b43 driver with respect to
> this chip.
> 
> Can anyone confirm whether it's fully functional under this platform? If
> not, what's left to be done ?

I believe the BCM5354 has an LP PHY. As such, it should be supported by
any 2.6.32, or later, kernel. AFAIK, no such device has been tested by a
developer. My tests with a BCM4312, which also has an LP PHY, show that
b43/mac80211 will function as an AP using recent versions of hostapd.

Larry
