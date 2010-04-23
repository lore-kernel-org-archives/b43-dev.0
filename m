From: Grygoriy Fuchedzhy <grygoriy.fuchedzhy@gmail.com>
Date: Sat, 24 Apr 2010 02:30:03 +0300
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
In-Reply-To: <w2rb7f967271004231625pf533c5f9l82a5bd19f31c7355@mail.gmail.com>
References: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
	<i2p69e28c911004231521m3c23db2excf59db2c52f0184d@mail.gmail.com>
	<w2rb7f967271004231625pf533c5f9l82a5bd19f31c7355@mail.gmail.com>
Message-ID: <y2ob7f967271004231630qf700e479p5659fc5fc39a1e83@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/4/24 G?bor Stefanik <netrolller.3d@gmail.com>
> Check compat-wireless; IIRC LP-PHY rfkill support has been updated in 2.6.34.
>
> BTW, does software-rfkill (using the rfkill command-line utility) work
> correctly?
> Specifically, the following scenarios are interesting:
> -With the hardware-rfkill switch ON (i.e. radio enabled), try to bring
> down the card using the rfkill utility. Does the card actually stop
> transmitting?
> -Try to turn it back on. Is the interface usable again?
> -Turn the hardware switch OFF, and back ON. Then, use rfkill to
> soft-disable and re-enable the card. Does this make it work again?
>
> --
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)

So, here is what I have:
> ?~ $ sudo rfkill list
> ?0: phy0: Wireless LAN
> ? ? ? Soft blocked: no
> ? ? ? Hard blocked: no

> ~ $ sudo rfkill block 0
Wifi immediately loses connection, wifi led turns off and dmesg reports:
> wlan0: deauthenticating from 00:23:69:2f:3f:01 by local choice (reason=3)

Now I have:
> ~ $ sudo rfkill list
> 0: phy0: Wireless LAN
> ? ? ? Soft blocked: yes
> ? ? ? Hard blocked: no

Unblocking:
> ~ $ sudo rfkill unblock 0
> ~ $ sudo rfkill list
> 0: phy0: Wireless LAN
> ? ? ? Soft blocked: no
> ? ? ? Hard blocked: no

But wifi is not functional, wifi led remains turned off, dmesg tells nothing.

If I turn hardware switch off and on, and then software off/on nothing changes.

Then I compiled 2.6.34_rc5 kernel and get same behavior. Also I have
got additional
entry in dmesg when turning wifi off with rfkill utility or with
hardware switch:
> cfg80211: Calling CRDA to update world regulatory domain

Thanks for quick response!

--
Grygoriy Fuchedzhy
