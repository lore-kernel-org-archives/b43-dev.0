From: Cheng Renquan <crquan@gmail.com>
Date: Wed, 4 Aug 2010 10:51:17 +0800
Subject: b43 help,
In-Reply-To: <AANLkTi=cbYrUsNJCdQG+UZ9DZNCo0d-BJ9zqsTW3iv89@mail.gmail.com>
References: <AANLkTimkV_LjgacMA6tR7Eaj=QpmXYJ2KwWYsuQFY-MV@mail.gmail.com> 
	<AANLkTi=cbYrUsNJCdQG+UZ9DZNCo0d-BJ9zqsTW3iv89@mail.gmail.com>
Message-ID: <AANLkTimYyzUE3_G+SrOyib=cBUj9GyrHT+eTAy2AUvXu@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/7/31 G?bor Stefanik <netrolller.3d@gmail.com>:
> This is a true BCM4312 (14E4:4315), not a 4311ABG (14E4:4312, commonly
> called a "4312"), according to your lspci output. That means, you are
> probably experiencing the DMA issue.
>
> Try loading b43 with "modprobe b43 nohwcrypt=1 qos=0 pio=1". If this
> doesn't fix it, then chances are, you are hitting a mac80211 bug.
>
> --
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)

In fact, I'm not often to go to that environment, so it's hard to reproduce;

Before that, I want to solve another problem inside my own campus,
with this b43 device,

in my campus, there are "SMUGIP" for guest network, it's a simple WiFi
spot without any encryption,
almost everyone wifi devices can connect it, but my linux with b43
cannot; it always scan and disconnect;

and there is a hidden wifi network named "WLAN-Staff", it uses
IEEE80211X encryption with PEAP,
and MSCHAPv2 authentication, should be logged in with username and password;

my another linux netbook with atheros wifi card can connect both,
especially, to connect that hidden and authentication required
network, I use this script:
# iwconfig ath0 essid "WLAN-Staff"
# wpa_supplicant -Dwext -iath0 -c /etc/wpa_supplicant.conf

with "/etc/wpa_supplicant.conf" content:
network={
  ssid="WLAN-Staff"
  key_mgmt="IEEE80211X"
  eap=PEAP
  phase2="autheap=MSCHAPv2"
  identity="username"
  password="password"
}

till now, my linux with this b43 driver actually can only connect to a
simple WEP encryption spot at home,
with some minor problems, I would rather to talk it later.

Someone know how to make this b43 to connect wifi at my campus? any
ideas I'd like to have a try,

thanks,
