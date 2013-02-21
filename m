From: W. Trevor King <wking@tremily.us>
Date: Thu, 21 Feb 2013 10:04:54 -0500
Subject: #define-ing hardcoded values in tables_phy_lcn.c
Message-ID: <20130221150454.GA24786@odin.tremily.us>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello list!

I'm playing around with BCM4313 support in b43.  I've enabled
CONFIG_B43_PHY_LCN and loaded the resulting module, which gives:

  $ dmesg | grep b43
  [  161.209249] b43-phy1: Broadcom 4313 WLAN found (core revision 24)
  [  161.210171] b43-phy1: Found PHY: Analog 10, Type 8 (LCN), Revision 1
  [  161.210185] b43-phy1 debug: Found Radio: Manuf 0x17F, Version 0x2064, Revision 1
  [  291.683651] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)
  [  291.685207] b43-phy1 ERROR: TX gain table unknown for this card
  [  291.685213] b43-phy1 ERROR: SW ctl table is unknown for this card
  [  291.711910] b43-phy1 debug: Chip initialized
  [  291.712164] b43-phy1 debug: 64-bit DMA initialized
  [  291.712323] b43-phy1 debug: QoS enabled
  [  291.713781] b43-phy1 debug: Wireless interface started
  [  291.713890] b43-phy1 debug: Adding Interface type 2

After which, `wpa_cli scan_results` doesn't list any networks.  On the
plus side, there haven't been any kernel panics ;).  Since the ?TX
gain table unknown? error came first, I'm trying to figure out how
brcmsmac handles this card, in the hope that I can just copy over the
appropriate table.  It looks like b43's b43_phy_lcn_load_tx_gain_table
matches up pretty closely with brcmsmac's
wlc_lcnphy_load_tx_gain_table, and there are a number of numbers
hard-coded into b43's version that are #defined in brcmsmac:

  b43    brcmsmac
  =====  ==============================
  0x140  LCNPHY_TX_PWR_CTRL_IQ_OFFSET
  0xc0   LCNPHY_TX_PWR_CTRL_GAIN_OFFSET

b43 versions of the two constants would probably be
B43_LCNPHY_TX_PWR_CTRL_IQ_OFFSET and
B43_LCNTAB_TX_PWR_CTRL_GAIN_OFFSET respecively, #defined in phy_lcn.h.
There are likely other constants that could take advantage of similar
naming.

Should I work up a patch that does this, or are there b43/brcmsmac
cross pollination issues that get in the way?

Cheers,
Trevor

-- 
This email may be signed or encrypted with GnuPG (http://www.gnupg.org).
For more information, see http://en.wikipedia.org/wiki/Pretty_Good_Privacy
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130221/43dffe53/attachment.sig>
