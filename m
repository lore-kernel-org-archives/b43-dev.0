From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Wed, 1 Jun 2011 00:29:41 +0100
Subject: Request for testing b43 & Broadcom 14e4:4315 cards for DMA
	ERRORs (Linux 3.0)
In-Reply-To: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
References: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
Message-ID: <20110601002941.1ab83b28@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 30 May 2011 09:22:32 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> Hello everybody,
> 
> I believe I've grabbed e-mails of all the people reporting DMA errors
> on b43/bcm43xx mailing list.
> 
> Short remind of the problem. When using b43 and LP-PHY card on some
> specific machines you got:
> b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
> 0x00000000, 0x00000000, 0x00000000
> b43-phy0: Controller RESET (DMA error) ...
> 
> The workaround was to use PIO instead of DMA, or "modprobe wl &&
> rmmod wl".
> 
> I believe we've fixed that errors in Linux 3.0-rc1. Can you give it a
> chance and report back?

This deals with the fatal DMA errors on my machine.  Well done.

However, fixing this bug reveals something else.  After about 2 hours of
streaming on MLB.TV I got this, apparently at random (but this is not a
hard error: by disassociating from the AP and reassociating, the rest of
the game played fine, and there was no need to load or unload modules):

b43-phy0 debug: TX-status contains invalid cookie: 0x0DCE
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 76
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 78
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 80
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 82
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 84
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 86
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 88
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 90
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 92
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 94
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 96
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 98
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 100
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 102
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 104
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 106
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 108
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 110
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 112
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 114
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 116
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 118
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 120
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 122
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 124
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 126
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 128
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 130
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 132
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 134
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 136
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 138
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 140
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 142
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 144
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 146
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 148
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 150
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 152
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 154
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 156
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 158
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 160
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 162
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 164
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 166
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 168
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 170
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 172
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 174
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 176
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 178
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 180
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 182
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 184
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 186
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 188
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 190
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 192
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 194
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 196
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 198
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 200
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 202
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 204
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 206
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 208
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 210
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 212
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 214
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 216
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 218
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 220
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 222
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 224
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 226
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 228
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 230
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 232
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 234
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 236
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 238
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 240
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 242
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 244
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 246
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 248
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 250
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 252
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 254
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 0
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 2
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 4
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 6
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 8
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 10
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 12
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 14
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 16
b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 18

... and so on ...

Chris
