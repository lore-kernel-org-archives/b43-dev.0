From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 08 Feb 2011 16:28:53 +0100
Subject: AW: 802.11 MAC state information
In-Reply-To: <00dc01cbc7a3$dbcc0a10$93641e30$@gmx.net>
	(sfid-20110208_102132_361673_7C2434FF)
References: <009801cbc77c$17225830$45670890$@gmx.net>
	(sfid-20110208_053652_042296_D74736C9)
	<1297175263.29400.11.camel@maggie>
	<00dc01cbc7a3$dbcc0a10$93641e30$@gmx.net>
	(sfid-20110208_102132_361673_7C2434FF)
Message-ID: <1297178933.29400.16.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2011-02-08 at 16:21 +0100, h2o-post wrote: 
> I would like to sample if the Broadcom wifi card (MAC) is transmitting, receiving or idle over time.
> Within the Atheros hardware there are register counters that count if one of the above - I call them - mac-state are present.
> Which those measurements I am looking into airtime consumption of different packets for sending and receiving.
> For example: 1500Byte udp packet causes the sender wifi card @54Mbit  to be busy by this transmission for 240 micro sec (what I measure in the Atheros hardware is a txcounter increase by ~9600 ticks @40MHz)... also quite interesting are the distributions of receiving states over time and cca channel sensing busy over time.
> I have implemented I quite fast mechanism to read/dump the Atheros registers to a trace file in order to validate different upper layer traffic patterns/settings. I would like to extend this measurement to Broadcom hardware as well. 
> For Atheros also the wprobe-utility from nbd,  a nice tool that make use out of this "mac-state" over time measurements, maybe you have heard about it ?
> 
> Does this make sense to you what I am interested in ?

The best and most accurate way to achieve this certainly is to
modify the firmware.
I don't know if the stock firmware provides enough information for
this without modification. You'll probably have to dig through the
specs wiki.

-- 
Greetings Michael.
