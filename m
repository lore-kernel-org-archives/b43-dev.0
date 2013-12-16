From: Seth Forshee <seth.forshee@canonical.com>
Date: Mon, 16 Dec 2013 16:00:59 -0600
Subject: [RFC PATCH 7/8] b43: Allow HWPS state to be changed
In-Reply-To: <1387231260-2849-1-git-send-email-seth.forshee@canonical.com>
References: <1387231260-2849-1-git-send-email-seth.forshee@canonical.com>
Message-ID: <1387231260-2849-8-git-send-email-seth.forshee@canonical.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, brcm80211-dev-list@broadcom.com, "John W. Linville" <linville@tuxdriver.com>, Stefano Brivio <stefano.brivio@polimi.it>, Arend van Spriel <arend@broadcom.com>, Seth Forshee <seth.forshee@canonical.com>

During background scans mac80211 wants to set powersave at the AP
so that frames will be buffered while off-channel. In order to do
this on Broadcom chips B43_MACCTL_HWPS needs to be set when
transmitting the nullfunc frames to enable powersave, however
b43_power_saving_ctl_bits() doesn't allow it to be set.

Rework this function a bit to allow setting HWPS. First,
initialize the hwps and awake variables based off the macctl
register to avoid changing the unintentionally changing the
values. It's not really necessary to set awake since it is later
forced to true, but it does no harm and might help avoid future
problems.

Second, remove the force set of hwps to false. No code currently tries
to change the hwps state anyway, so this results in no functional
change.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 drivers/net/wireless/b43/main.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
index ccd24f0a..bc6ba1c 100644
--- a/drivers/net/wireless/b43/main.c
+++ b/drivers/net/wireless/b43/main.c
@@ -1117,6 +1117,10 @@ void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
 		    (ps_flags & B43_PS_DISABLED));
 	B43_WARN_ON((ps_flags & B43_PS_AWAKE) && (ps_flags & B43_PS_ASLEEP));
 
+	macctl = b43_read32(dev, B43_MMIO_MACCTL);
+	hwps = !!(macctl & B43_MACCTL_HWPS);
+	awake = !!(macctl & B43_MACCTL_AWAKE);
+
 	if (ps_flags & B43_PS_ENABLED) {
 		hwps = true;
 	} else if (ps_flags & B43_PS_DISABLED) {
@@ -1135,11 +1139,9 @@ void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
 		//      successful, set bit26
 	}
 
-/* FIXME: For now we force awake-on and hwps-off */
-	hwps = false;
+/* FIXME: For now we force awake-on */
 	awake = true;
 
-	macctl = b43_read32(dev, B43_MMIO_MACCTL);
 	if (hwps)
 		macctl |= B43_MACCTL_HWPS;
 	else
-- 
1.8.3.2
