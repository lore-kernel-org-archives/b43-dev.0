From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 08 Feb 2011 15:27:43 +0100
Subject: 802.11 MAC state information
In-Reply-To: <009801cbc77c$17225830$45670890$@gmx.net>
	(sfid-20110208_053652_042296_D74736C9)
References: <009801cbc77c$17225830$45670890$@gmx.net>
	(sfid-20110208_053652_042296_D74736C9)
Message-ID: <1297175263.29400.11.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 2011-02-08 at 11:36 +0100, h2o-post wrote: 
> Hi all,
> 
> I would like to know from the Broadcom experts, if there is the possibility in the b43 driver to read the current state of the 802.11 MAC..
> As I am more familiar with the Atheros design, I am uncertain if there are register that someone could just sample to get this information or if you need to get some hocks int the micro controller code ??? 
> To explain briefly the way I get this information form Atheros hardware: on the wifi card there is a 40MHzmac clock that counts up 4 registers. One for the clock ticks itself, one for the MAC been in transmitting mode, one counter for the MAC been in receiving mode and the last counter represents energy detection above the cca threshold.
> I already checked the b43 souce code in order to find some registers that could count those mac states .. but I was not able to find anything. So I am asking to the list 
> where such information would be accessible from the Broadcom wifi hardware.

You can get all information you want from
http://bcm-v4.sipsolutions.net/

There's no such thing as "the MAC state". There are
hundreds of registers related to various "MAC states". So you'll
have to be more specific on what you want to know.

-- 
Greetings Michael.
