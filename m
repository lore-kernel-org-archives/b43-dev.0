From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 19 Sep 2011 13:24:06 +0200
Subject: new info on spr
Message-ID: <2EE0D17E-16E8-4354-BFFF-8971BA740EF9@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Michael, Larry,

I c.c. you both because I don't know who is taking care of adding info to the website. Please tell me for the next time :-)

Hope to not tell things you already know, anyway this is the meaning of four hw (spr) registers that I'm working with these days. They refer to the small FIFOs that are implemented in the template memory which is the actual place from where packets are fetch for transmission (http://bcm-v4.sipsolutions.net/802.11/TemplateRam). These buffers are rings and the dma controller copies a new packet into the corresponding ring when there is enough space.

When (queue number << 8) is put into SPR_TXE0_FIFO_CMD (or'ed with 0x4000) and (queue number << 8) is put into SPR_TXE0_SELECT, the following registers reflect the layout of the corresponding queue in the ring:

- spr091 - register 0x522. Number of packets in the ring. Suggest to change current name SPR_TXE0_0x22 to SPR_TXE0_FIFO_PACKETNUM;
- spr092 - register 0x524. First byte available in the queue. Suggest to change current name SPR_TXE0_0x24 to SPR_TXE0_FIFO_BYTENUM;
- spr093 - register 0x526. Point to the first byte of the HOL packet. Suggest to change current name SPR_TXE0_0x26 to SPR_TXE0_FIFO_HOL;
- spr094 - register 0x528. Point to byte 0x78 of the HOL packet and is always equal to the value in spr093 plus 0x78. No suggestion.

All other registers in this area (SPR_TXE0_0x22->0x78) which are not already described in the wiki are always zero when read, maybe they have other meanings when they are written. Note that packets are copied in the template memory starting on 32bit boundaries and that they can be modified by the firmware by changing values in template memory: the change reflects in the transmitted packet. Since these FIFO are rings, a packet can cross the FIFO end boundary: the tx-engine will take care of this when transmitting.

-Francesco
