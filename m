From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Mon, 17 Jan 2011 14:51:06 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
In-Reply-To: <20110117110618.0000170f@unknown>
References: <20110114182113.0000753f@unknown> <4D309B73.8050402@lwfinger.net>
	<20110115080500.00001c48@unknown> <4D31CDA3.9040304@lwfinger.net>
	<20110117110618.0000170f@unknown>
Message-ID: <20110117145106.00001ec8@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 17 Jan 2011 11:06:18 +0100
dylan cristiani <d.cristiani@idem-tech.it> wrote:

> On Sat, 15 Jan 2011 10:38:59 -0600
> Larry Finger <Larry.Finger@lwfinger.net> wrote:
> 
> > On 01/15/2011 01:05 AM, Dylan Cristiani wrote:
> > > it will be hard i must try to find some sniffer somewhere
> > >>
> > >> Larry
> > > for now tks larry!
> > 
> > One other thing. Before you try to make the connection, start the
> > command 'iw event -t -f' in another terminal to see what events are
> > happening.
> > 
> > Larry
> here comes the 'iw event -t -f' log:
> 
> nylux:~ #iw event -t -f
> 1229947332.952454: wlan0 (phy #0): scan started
> 1229947334.360008: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, "bancoliniaes"
> 1229947334.406591: wlan0 (phy #0): auth 00:15:70:e2:3c:a1 ->
> 14:0b:6b:1e:3e:86 status: 0: Successful [frame: b0 08 40 01 14 0b 6b
> 1e 3e 86 00 15 70 e2 3c a1 00 15 70 e2 3c a1 80 7d 00 00 02 00 00 00]
> 1229947334.417716: wlan0: new station 00:15:70:e2:3c:a1
> 1229947334.430558: wlan0 (phy #0): assoc 00:15:70:e2:3c:a1 ->
> 14:0b:6b:1e:3e:86 status: 0: Successful [frame: 10 00 40 01 14 0b 6b
> 1e 3e 86 00 15 70 e2 3c a1 00 15 70 e2 3c a1 90 7d 11 04 00 00 01 c0
> 01 08 82 84 8b 0c 12 96 18 24 32 05 24 30 48 60 6c] 
> 1229947334.431352: wlan0 (phy #0): connected to 00:15:70:e2:3c:a1 
> 1229947340.620737: wlan0 (phy #0): deauth 14:0b:6b:1e:3e:86 ->
> 00:15:70:e2:3c:a1 reason 4: Disassociated due to inactivity [frame: c0
> 00 00 00 00 15 70 e2 3c a1 14 0b 6b 1e 3e 86 00 15 70 e2 3c a1 00 00
> 04 00] 
> 1229947340.621700: wlan0 (phy #0): disconnected (local request)
> 1229947340.740407: wlan0 (phy #0): scan started 
> 1229947342.169816: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1229947342.791016: wlan0 (phy #0): auth: timed out 
> 1229947342.791700: wlan0 (phy #0): failed to connect to
> 00:15:70:e2:3c:a1, status: 1: Unspecified failure 
> 1229947352.221068: wlan0 (phy #0): scan started 
> 1229947353.654043: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, "bancoliniaes"
> 1229947358.680398: wlan0 (phy #0): scan started
> 1229947360.110101: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1229947365.130440: wlan0 (phy #0): scan started 
> 1229947366.559799: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, "bancoliniaes"
> 
> 
> As you can see the module get associated to AP whose ssid is
> "bancoliniaes", get connected but few time after it disassociates:
> 'reason 4: Disassociated due to inactivity' i dunno why is this
> happening...
> after this i cutted the log because it loops forever between 'scan
> started' and 'scan finished' without any more association between the
> module and the AP! i hope this logs can tell you something to help me.
> for now tks
PS for sure, AP side, there are no rules, nor blacklists, nor filters
nor timer to disconnect anyone from the net!
