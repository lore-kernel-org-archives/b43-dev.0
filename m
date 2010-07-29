From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 29 Jul 2010 11:10:38 -0500
Subject: Urgente- Help in Broadcom bcm4353 - device 14e4:4353 linux driver
	monitor mode.
In-Reply-To: <AANLkTinWsn185=v35oVAQzuhEXoAVdnhjPhh6sOXbAAa@mail.gmail.com>
References: <AANLkTinWsn185=v35oVAQzuhEXoAVdnhjPhh6sOXbAAa@mail.gmail.com>
Message-ID: <4C51A7FE.5040105@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/29/2010 06:36 AM, Arthur Moreira wrote:
> Hi guys
> I need a help for to find a especific or modified wl driver for the
> device 14e4:4353 Broadcom wireless for work in monitor or promiscuo
> mode.
> i read a site  and see your work about this.
> 
> 
> if somebody can help me, tks
> 
> my card work normally with the compiled hybrid driver wl of the broadcom site
> this site: broadcom linux sta, 32 bits hybrid

The Broadcom STA driver is closed source. No one other than Broadcom can help
you, and they are not likely to do so.

The open-source b43 driver does handle promiscuous mode, but it does not yet
work for 802.11n devices. We are working on that code, but have no timetable for
completion.

Larry
