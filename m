From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 26 Sep 2011 12:47:31 +0200
Subject: new info on spr
Message-ID: <49DACA2A-7EE4-4AAE-934F-26E7A05F0D06@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Michael, Larry,

sorry if I bother you again. I'm resending the message just to add some more information I discovered so far. I send this to both of you because I don't know who is taking care of adding info to the website. Please tell me for the next time :-)

As you can see the tx engine can work either on "raw" template memory and also on the small FIFOs in template memory where the external FIFOs are mapped (according to http://bcm-v4.sipsolutions.net/802.11/TemplateRam). For this reason we should talk about "raw operations" on template memory, and "queue operations".

Best regards,
-Francesco

---------

- spr080 - register 0x500. Set this register to schedule a transmission in the future. Some bits must be used as shown but I don't know what they exactly change in the tx engine.

bit	0x1		0: no tx is scheduled and tx engine is disabled; 1: tx engine enabled and tx will happen in the future according to requested delay (see below);
bit	0x6		0: tx delay is 10us; 1: tx in 20us; 2: tx in 30us; 3 tx is immediate;
bit	0x8		0 for acks, beacons and fragments (might refer to carrier sense);
bit	0x10	0 for acks and fragments (might refer to carrier sense);
bit	0x20	1 to enable sym war;
bit	0x80	1 for beacon, in this case only CCK can be used;
bit	0x100	1 to copy timestamp at address specified by spr082;
bit	0x200	1 for atim;
bit	0xC00	00 for acks and fragments;
bit	0x2000	1 for atim;
bit	0x4000	1 to let hardware computing and adding fcs at the end of the packet. If 0 then the data has to include four more bytes: tx engine transmits also if the resulting fcs is wrong.

- spr082 - register 0x504. Offset where the tx engine copies the 8 bytes clock value when a packet is transmitted. This is an optional feature enabled by setting bit 0x100 in spr080 (see above);

** The following four registers reflect the instantaneous layout of a given FIFO queue as mapped in template memory (http://bcm-v4.sipsolutions.net/802.11/TemplateRam). To select one of the FIFOs one should set up both spr0a0 (SPR_TXE0_FIFO_CMD) with (queue# << 8 | 0x4000) and spr0b4 (SPR_TXE0_SELECT) with (queue#<<8). Note that these small FIFOs implemented in template memory are the actual place from where packets are fetched for transmission. These buffers are rings and the dma controller copies a new packet into the corresponding ring when there is enough space and starting on 32bit boundaries. Packets are then transmitted by copying their image from the template so that one can easily modify a packet in the template. 

- spr091 - register 0x522. Number of packets in the ring. Suggest to change current name SPR_TXE0_0x22 to SPR_TXE0_FIFO_PACKETNUM;

- spr092 - register 0x524. First byte available in the queue. Suggest to change current name SPR_TXE0_0x24 to SPR_TXE0_FIFO_BYTENUM;

- spr093 - register 0x526. Point to the first byte of the HOL packet. Suggest to change current name SPR_TXE0_0x26 to SPR_TXE0_FIFO_HOL;

- spr094 - register 0x528. Point to the current byte of the HOL packet. Operations like transmissions, copies and byte skippings refer and/or change this value. See below, register spr0a0. Suggest to change current name SPR_TXE0_0x28 to SPR_TXE0_FIFO_HOL_CURPTR;

** end

- spr0a0 - register 0x540. To be set to (queue#<<8)|CMD. CMD := 0x4000 restores SPR_TXE0_FIFO_HOL_CURPTR to SPR_TXE0_FIFO_HOL;  CMD := 0x2000 move SPR_TXE0_FIFO_HOL and SPR_TXE0_FIFO_HOL_CURPTR to byte zero of the next packet in the queue; this recycles the space left available to load more packets from the corresponding external queue (how many depends on the length of the new packets, might also be zero);

- spr0a2 - register 0x544. Change behavior of spr0a4. The value set here acts like a threshold for the number of bytes in the selected queue (SPR_TXE0_FIFO_BYTENUM). If SPR_TXE0_FIFO_BYTENUM is above the threshold, then the value of spr0a4 changes; this might trigger an external condition as well (it's just an hypothesis);

- spr0a4 - it is zero when no queue is selected; 0x80|(queue#) when a queue is selected and SPR_TXE0_FIFO_BYTENUM is below value in spr0a4. Otherwise it is 0x8080|(queue#)|(queue#<<8);

- spr0a5 - only the three lsb can be set. It is usually 0x7 but nothing (apparently) changes with different values;

- spr0b4 - select one operation (out of the three here below) on a given queue or on the raw template memory

bit	0x3:
	0: no operation;
	1: copy in SHM up to the end of the current packet OR the number of bytes written in spr0b5 (SPR_TXE0_TX_COUNT). Dst addr is SPR_TXE0_TX_SHM_ADDR. Source address is either SPR_TXE0_Template_TX_Pointer when operating on raw template, or SPR_TXE0_FIFO_HOL_CURPTR when operating on a FIFO queue;
	2: transmit up to the end of the current packet OR the number of bytes written in spr0b5. Starts form SPR_TXE0_Template_TX_Pointer when operating on raw template, or SPR_TXE0_FIFO_HOL_CURPTR when operating on a FIFO queue;
	3: advance SPR_TXE0_FIFO_HOL_CURPTR when operating on a FIFO queue: the number of bytes added to the pointer is the value in spr0b5 (SPR_TXE0_TX_COUNT);

bit	0x4:
	0: work up to the end of the packet in the FIFO queue (see notes below);
	1: work up to the number of bytes written in spr0b5 (SPR_TXE0_TX_COUNT);

bit	0x20: set it to 1 when asking transmission of a given number of bytes as written in spr0b5, must be zero in all other cases and operations;

bit	0x700: FIFO queue# on which the operation must be performed

bit	0x800: 0 to operate on a FIFO queue, 1 to operate on raw template.

Note that
- packets in each external fifo are 1) copied in template and 2) transmitted from template. So that you can modify a packet when it is in template BEFORE transmission;
- transmission op fetches bytes from the FIFO image in the template and buffers them somewhere in the tx engine at a very high speed. Actual transmission MAY start@the same time. You can check how many bytes have been fetched in real time after requesting a transmission by monitoring SPR_TXE0_FIFO_HOL_CURPTR;
- when working on given number of bytes from a FIFO queue, tx and copy can be requested beyond the end of the current packet BUT within the next 32bit boundary (i.e., up to three bytes more can be transmitted if allowed by length of the packet itself);
- when the PLCP is wrong with respect to the number of bytes requested or in the queue, the transmission starts the same BUT it will trigger the very famous "PHY transmission error". I imagine that the tx engine simply expect a given number of bytes but it receive less than expected and the transmission is interrupted. Sometimes I noticed the rest of the packet being actually transmitted and padded with zeros;
- the images of the external FIFO in the template are rings: this means that a packet can cross the FIFO end boundary: the tx-engine will take care of this when transmitting.

-Francesco
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110926/6613092c/attachment.html>
