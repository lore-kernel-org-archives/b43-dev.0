From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 6 Mar 2011 09:41:13 +0100
Subject: 4311rev02 and Ad-hoc
In-Reply-To: <199148524218.20110306013152@scalpnet.ru>
References: <199148524218.20110306013152@scalpnet.ru>
Message-ID: <AANLkTikCqS1mhByk_D5gLgL==T1EUXAj8DUp9nyaQy7P@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/5 Andrei R <ra@scalpnet.ru>:
> I use b43 on 2.6.35-27 kernel.
> Hardware is 14e4:4311 (rev.02).
> fwcutter is installed.
>
> dmesg shows
> b43-phy0: Broadcom 4311 WLAN found (core revision 13)
> b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
>
> iwlist shows wifi nets near.
>
> But if i try to connect to ad-hoc network through NetworkManager -
> strange thing happens. It behaves as if a connection is established,
> e.g. iwconfig shows correct ESSID and some Cell number.
>
> ifconfig shows RX packets:0 on wlan0. Pings are timed out.
>
> Does ad-hoc ever work on b43 with my hardware?

I think ad-hoc should work. Your card is G-PHY, from that series I've
only 4318, but will try ad-hoc with it anyway.

What do you mean by cell number in "correct ESSID and some Cell number"?

What other devices are in your ad-hoc network? What wireless cards/drivers?

Does connecting to normal network works fine for you?

Did you try connecting without NetworkManager?

-- 
Rafa?
