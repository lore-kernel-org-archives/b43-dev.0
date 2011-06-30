From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 30 Jun 2011 08:42:56 +0200
Subject: [RFC v3 03/13] bcma: add functions to scan cores needed on SoCs
In-Reply-To: <1309385518-12097-4-git-send-email-hauke@hauke-m.de>
References: <1309385518-12097-1-git-send-email-hauke@hauke-m.de>
	<1309385518-12097-4-git-send-email-hauke@hauke-m.de>
Message-ID: <BANLkTimAE-xphUYeMMzzz6B531tedo6Vkw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com, arnd@arndb.de, julian.calaby@gmail.com, sshtylyov@mvista.com

2011/6/30 Hauke Mehrtens <hauke@hauke-m.de>:
> + ? ? ? ? ? ? ? core->core_index = core_num++;
> + ? ? ? ? ? ? ? bus->nr_cores++;
> +
> ? ? ? ? ? ? ? ?pr_info("Core %d found: %s "
> ? ? ? ? ? ? ? ? ? ? ? ?"(manuf 0x%03X, id 0x%03X, rev 0x%02X, class 0x%X)\n",
> - ? ? ? ? ? ? ? ? ? ? ? bus->nr_cores, bcma_device_name(&core->id),
> + ? ? ? ? ? ? ? ? ? ? ? core->core_index, bcma_device_name(&core->id),
> ? ? ? ? ? ? ? ? ? ? ? ?core->id.manuf, core->id.id, core->id.rev,
> ? ? ? ? ? ? ? ? ? ? ? ?core->id.class);
>
> - ? ? ? ? ? ? ? core->core_index = bus->nr_cores++;
> ? ? ? ? ? ? ? ?list_add(&core->list, &bus->cores);

Didn't you just change core indexes (0, 1, ...) to numbers (1, 2,
...)? It would break enabling IRQs on PCI.

Didn't test it however yet, I'll have access to my machines tomorrow.

-- 
Rafa?
