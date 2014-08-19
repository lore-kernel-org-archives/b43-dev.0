From: Brandon Enochs <enochs.brandon@gmail.com>
Date: Tue, 19 Aug 2014 19:36:18 -0400
Subject: Radiotap Channel Bug
Message-ID: <CAP-AUygR-351cngtV5f5NUyitdAay3+az4=_zkWij61wh7iByw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

With CentOS 6.5, the LP phy type currently suffers from a calculation
error in the way that it reports the channel on which a frame was
received up through the mac80211 stack.  It should use the
b43_channel_to_freq_2ghz function; however, it uses the
b43_freq_to_channel_2ghz instead.  As a result, the radiotap header
provides nonsensical values for the channel field.  The following
patch fixes this issue

Sincerely,
Brandon Enochs

diff -rupN ../linux-2.6.32-431.23.3.el6/drivers/net/wireless/b43/xmit.c
drivers/net/wireless/b43/xmit.c
--- ../linux-2.6.32-431.23.3.el6/drivers/net/wireless/b43/xmit.c
2014-07-16 05:33:22.000000000 -0400
+++ drivers/net/wireless/b43/xmit.c 2014-08-19 19:19:20.607959455 -0400
@@ -821,10 +821,10 @@ void b43_rx(struct b43_wldev *dev, struc
   * channel number in b43. */
  if (chanstat & B43_RX_CHAN_5GHZ) {
  status.band = IEEE80211_BAND_5GHZ;
- status.freq = b43_freq_to_channel_5ghz(chanid);
+ status.freq = b43_channel_to_freq_5ghz(chanid);
  } else {
  status.band = IEEE80211_BAND_2GHZ;
- status.freq = b43_freq_to_channel_2ghz(chanid);
+ status.freq = b43_channel_to_freq_2ghz(chanid);
  }
  break;
  default:
