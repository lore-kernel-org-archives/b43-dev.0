From: h2o-post <h2o-post@gmx.net>
Date: Tue, 8 Feb 2011 16:21:28 +0100
Subject: AW: 802.11 MAC state information
In-Reply-To: <1297175263.29400.11.camel@maggie>
References: <009801cbc77c$17225830$45670890$@gmx.net>	
	(sfid-20110208_053652_042296_D74736C9)
	<1297175263.29400.11.camel@maggie>
Message-ID: <00dc01cbc7a3$dbcc0a10$93641e30$@gmx.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> > Hi all,
> >
> > I would like to know from the Broadcom experts, if there is the possibility in
> the b43 driver to read the current state of the 802.11 MAC..
> > As I am more familiar with the Atheros design, I am uncertain if there are
> register that someone could just sample to get this information or if you
> need to get some hocks int the micro controller code ???
> > To explain briefly the way I get this information form Atheros hardware: on
> the wifi card there is a 40MHzmac clock that counts up 4 registers. One for
> the clock ticks itself, one for the MAC been in transmitting mode, one
> counter for the MAC been in receiving mode and the last counter represents
> energy detection above the cca threshold.
> > I already checked the b43 souce code in order to find some registers
> > that could count those mac states .. but I was not able to find anything. So I
> am asking to the list where such information would be accessible from the
> Broadcom wifi hardware.
> 
> You can get all information you want from http://bcm-v4.sipsolutions.net/
> 
> There's no such thing as "the MAC state". There are hundreds of registers
> related to various "MAC states". So you'll have to be more specific on what
> you want to know.

I would like to sample if the Broadcom wifi card (MAC) is transmitting, receiving or idle over time.
Within the Atheros hardware there are register counters that count if one of the above - I call them - mac-state are present.
Which those measurements I am looking into airtime consumption of different packets for sending and receiving.
For example: 1500Byte udp packet causes the sender wifi card @54Mbit  to be busy by this transmission for 240 micro sec (what I measure in the Atheros hardware is a txcounter increase by ~9600 ticks @40MHz)... also quite interesting are the distributions of receiving states over time and cca channel sensing busy over time.
I have implemented I quite fast mechanism to read/dump the Atheros registers to a trace file in order to validate different upper layer traffic patterns/settings. I would like to extend this measurement to Broadcom hardware as well. 
For Atheros also the wprobe-utility from nbd,  a nice tool that make use out of this "mac-state" over time measurements, maybe you have heard about it ?

Does this make sense to you what I am interested in ?

Thomas

> --
> Greetings Michael.
