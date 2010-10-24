From: Dennis Nezic <dennisn@dennisn.dyndns.org>
Date: Sun, 24 Oct 2010 19:18:35 -0400
Subject: BCM4318 trouble connecting to ad-hoc network
Message-ID: <20101024191835.7a8fb4e5.dennisn@dennisn.dyndns.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Sometimes, most of the time, when I try to reload/restart my wifi
interface, I get a "No active IBSS STAs" message in my syslog, and my
subsequent dhcpcd call fails "waiting for carrier". However, it does
seem to sortof still work -- if I manually run dhcpcd a few seconds
later, it works.

iw event -t:
1287961348.312835: wlan0 (phy #0): IBSS ... joined
1287961348.599939: wlan0: unknown event 19
1287961350.033722: wlan0: unknown event 1

syslog:
/etc/init.d/net.wlan0[11116]: WARNING: net.wlan0 has started, but is
   inactive
kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26
kernel: wlan0: Selected IBSS BSSID ... based on configured SSID
wpa_cli: interface wlan0 CONNECTED
dhcpcd: version 5.1.3 starting
kernel: wlan0: No active IBSS STAs - trying to scan for other IBSS
  networks with same SSID (merge)
dhcpcd: wlan0: waiting for carrier


However, on other rare times, when a "Trigger new scan" occurs, it all
works smoothly.

iw event -t:
1287961295.764797: wlan0 (phy #0): IBSS ... joined
1287961295.865132: wlan0: unknown event 19

syslog:
/etc/init.d/net.wlan0[10708]: WARNING: net.wlan0 has started, but is
   inactive
kernel: b43-phy0: Loading firmware version 410.2160
kernel: wlan0: Trigger new scan to find an IBSS to join
kernel: wlan0: Selected IBSS BSSID ... based on configured SSID
wpa_cli: interface wlan0 CONNECTED
dhcpcd: version 5.1.3 starting
dhcpcd: wlan0: rebinding lease of 10.0.1.4
dhcpcd: wlan0: acknowledged 10.0.1.4 from 10.0.1.1


Thoughts? What triggers the trigger?
