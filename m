From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 19 Oct 2010 11:04:19 -0500
Subject: PIO mode
In-Reply-To: <20101019004331.GN1593@home.pavel.comp>
References: <20101009213220.GU1593@home.pavel.comp>
	<AANLkTikGjYxH-kzHXhZhfz2=e5P1hj20sNr8Fy5aydf_@mail.gmail.com>
	<20101010072158.GV1593@home.pavel.comp>
	<AANLkTinYvvk0mYTgKu2gJziLSEoZnMm491wUbZ4BO_Sf@mail.gmail.com>
	<20101010170311.GW1593@home.pavel.comp>
	<AANLkTinQiguGK3YaVb=bqt9n3gCZ-=pgLoc40vRqrN=Q@mail.gmail.com>
	<20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
Message-ID: <4CBDC183.9020101@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/18/2010 07:43 PM, Paul Fertser wrote:
\>
> I have a desktop connected by wired ethernet to the wireless AP and i do
> 
> $ ssh pavelssh at 192.168.1.2 bash -c 'cat > /dev/null' < /dev/zero
> 
> from the netbook.

Running the equivalent of the above command on my system does not result in a
DMA error for my 14e4:4315 device. It runs for almost 22 minutes and then loses
the connection with the following logged:

Oct 19 10:13:06 linux-1fyl sshd[29903]: Accepted keyboard-interactive/pam for
finger from 192.168.1.51 port 53026 ssh2
Oct 19 10:35:02 linux-1fyl kernel: [84171.492191] ieee80211 phy0: wlan0: No
probe response from AP c0:3f:0e:be:2b:45 after 500ms, disconnecting.
Oct 19 10:35:02 linux-1fyl kernel: [84171.492669] b43-phy0 debug: Disabling
hardware based encryption for keyidx: 0, mac: c0:3f:0e:be:2b:45
Oct 19 10:35:02 linux-1fyl kernel: [84171.494141] cfg80211: Calling CRDA to
update world regulatory domain
Oct 19 10:35:02 linux-1fyl kernel: [84171.508348] cfg80211: World regulatory
domain updated:
Oct 19 10:35:02 linux-1fyl kernel: [84171.508356]     (start_freq - end_freq @
bandwidth), (max_antenna_gain, max_eirp)
Oct 19 10:35:02 linux-1fyl kernel: [84171.508364]     (2402000 KHz - 2472000 KHz
@ 40000 KHz), (300 mBi, 2000 mBm)
Oct 19 10:35:02 linux-1fyl kernel: [84171.508371]     (2457000 KHz - 2482000 KHz
@ 20000 KHz), (300 mBi, 2000 mBm)
Oct 19 10:35:02 linux-1fyl kernel: [84171.508377]     (2474000 KHz - 2494000 KHz
@ 20000 KHz), (300 mBi, 2000 mBm)
Oct 19 10:35:02 linux-1fyl kernel: [84171.508384]     (5170000 KHz - 5250000 KHz
@ 40000 KHz), (300 mBi, 2000 mBm)
Oct 19 10:35:02 linux-1fyl kernel: [84171.508390]     (5735000 KHz - 5835000 KHz
@ 40000 KHz), (300 mBi, 2000 mBm)
Oct 19 10:35:03 linux-1fyl kernel: [84172.908799] wlan0: authenticate with
c0:3f:0e:be:2b:45 (try 1)
Oct 19 10:35:04 linux-1fyl kernel: [84173.108181] wlan0: authenticate with
c0:3f:0e:be:2b:45 (try 2)
Oct 19 10:35:04 linux-1fyl kernel: [84173.308218] wlan0: authenticate with
c0:3f:0e:be:2b:45 (try 3)
Oct 19 10:35:04 linux-1fyl kernel: [84173.508194] wlan0: authentication with
c0:3f:0e:be:2b:45 timed out
Oct 19 10:35:18 linux-1fyl avahi-daemon[1635]: Withdrawing address record for
192.168.1.109 on wlan0.
Oct 19 10:35:18 linux-1fyl avahi-daemon[1635]: Leaving mDNS multicast group on
interface wlan0.IPv4 with address 192.168.1.109

So far, I have done 2 runs with the failure at 22 minutes in both cases. When
this situation occurs, I can do an unload/reload sequence and it will run for
another 22 minutes.

Larry
