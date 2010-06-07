From: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Mon, 07 Jun 2010 21:00:57 +0200
Subject: BCM5354
In-Reply-To: <4C0D3EF6.3040908@lwfinger.net>
	(sfid-20100607_144806_339236_44E4872D)
References: <4C0D3B89.7060600@sephix.com> <4C0D3EF6.3040908@lwfinger.net>
	(sfid-20100607_144806_339236_44E4872D)
Message-ID: <4C0D41E9.30906@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/07/2010 08:48 PM, Larry Finger wrote:
> On 06/07/2010 01:33 PM, Robert Hazbun wrote:
>> Hello all,
>>
>> I currently work for a company that is using OpenWRT, with linux 2.4, on
>> a BCM5354. We really want to move to OpenWRT with linux 2.6 using the
>> b43 driver on this chip. Initial test results show that b43 seems to
>> work in client / Adhoc mode, but not in AP mode. Unfortunately, I have
>> been unable to ascertain the status of the b43 driver with respect to
>> this chip.
>>
>> Can anyone confirm whether it's fully functional under this platform? If
>> not, what's left to be done ?
>
> I believe the BCM5354 has an LP PHY. As such, it should be supported by
> any 2.6.32, or later, kernel. AFAIK, no such device has been tested by a
> developer. My tests with a BCM4312, which also has an LP PHY, show that
> b43/mac80211 will function as an AP using recent versions of hostapd.


OpenWRT uses compat-wireless, so it should actually work out of the box 
with current OpenWRT SVN trunk.
I didn't try that yet, however.
It is possible that the PHY has a special revision which is not fully 
implemented in the driver, yet.


-- 
Greetings Michael.
