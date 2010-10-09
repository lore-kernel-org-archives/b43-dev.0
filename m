From: Paul Fertser <fercerpav@gmail.com>
Date: Sat, 9 Oct 2010 15:53:20 +0400
Subject: Issues with 14e4:4315 on "lenovo ideapad s9" - works only after wl
Message-ID: <20101009115320.GR1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

First of all, let me express my sincere admiration of all the hard work
done on the b43. You guys rock.

I've got here a Lenovo Ideapad s9 with this lp broadcom card integrated.
Surprisingly (i've seen "same" cards work in other devices) it doesn't work
properly with b43.

The driver says core revision is 15, and fw version is 478.104 (which i
assume matches the recommended version), bleeding edge compat-wireless as
of yesterday.

The card works as expected with the sta driver, and b43 handles it nicely
after unloading wl and loading b43 (there's a funny issue with lib80211
involved (wl doesn't work properly with bleeding edge lib80211, it craps
dmesg with some garbage) so it's necessary to load different versions of it
as well). Alas it can't associate to my WPA/RSN AP after a reboot. It can
scan but not associate.

Unfortunately, loctls debugfs file is implemented only for g phy's (btw,
-ENODEV prevents the user from seeing the informational message) and i have
no other ideas how to get some useful register dumps for comparision or any
other information that can help debugging.

Please let me know and i'll do whatever testing is needed. TIA

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
