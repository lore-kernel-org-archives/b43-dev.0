From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 17 Jul 2010 22:00:19 -0500
Subject: My test for bcm4213
In-Reply-To: <AANLkTimFQFfmMlxKpmRUv8ZR_fDoZr7Ld84jOrIE1oVZ@mail.gmail.com>
References: <AANLkTinHyR4ho_Ti6xB1dggpOBX1uJ_hZn7WXX_mgWlc@mail.gmail.com>	<AANLkTinodxB2RDKnHoHlzSDvC2xbL-J78z0O8TX59JDb@mail.gmail.com>	<4C420119.4090109@lwfinger.net>
	<AANLkTimFQFfmMlxKpmRUv8ZR_fDoZr7Ld84jOrIE1oVZ@mail.gmail.com>
Message-ID: <4C426E43.6070706@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/17/2010 09:09 PM, Kevyn-Alexandre Par? wrote:
> Next time will post with attachment .txt or directly in the email.

Thank you.

> I was just reporting that it was working properly except the  sudo
> apt-get install b43-fwcutter didn't work. Because it was installing
> the wrong version&  I explain how I did it (just installing for src).

There is no wrong version for fwcutter. I did not see what was wrong other than 
you did not have firmware installed.

> I also check the archive and knew about the DMA error sorry for not
> been clear enough....
>
> I'm on:
> uname -a
> Linux vostro 2.6.35-rc5+ #2 SMP Thu Jul 15 14:05:34 EDT 2010 x86_64 GNU/Linux
>
> It's working fine.

Some boxes recover from the DMA error and switch to PIO mode without trouble. 
Others do not and need the options that I listed.

> Do you still have things to do on it if so what and where is your todo
> list?! I imagnie that b43 no because I'm looking at the
> http://linuxwireless.org/en/users/Drivers     and all is set to yes...

We do not have a formal todo list. Informally, we need to fix the DMA problem, 
which is likely to be a PCIe setup problem. We also need to complete the code 
for the N-PHY devices. We also need to do the reverse engineering and coding for 
the SSLPN-PHY units.

Larry
