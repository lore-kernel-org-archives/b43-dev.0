From: h2o-post <h2o-post@gmx.net>
Date: Tue, 8 Feb 2011 11:36:48 +0100
Subject: 802.11 MAC state information
Message-ID: <009801cbc77c$17225830$45670890$@gmx.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

I would like to know from the Broadcom experts, if there is the possibility in the b43 driver to read the current state of the 802.11 MAC..
As I am more familiar with the Atheros design, I am uncertain if there are register that someone could just sample to get this information or if you need to get some hocks int the micro controller code ??? 
To explain briefly the way I get this information form Atheros hardware: on the wifi card there is a 40MHzmac clock that counts up 4 registers. One for the clock ticks itself, one for the MAC been in transmitting mode, one counter for the MAC been in receiving mode and the last counter represents energy detection above the cca threshold.
I already checked the b43 souce code in order to find some registers that could count those mac states .. but I was not able to find anything. So I am asking to the list 
where such information would be accessible from the Broadcom wifi hardware.

Thx for helping
Thomas
