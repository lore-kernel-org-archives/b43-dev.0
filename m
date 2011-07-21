From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 22 Jul 2011 01:01:26 +0200
Subject: [PATCH v2 01/11] bcma: move parsing of EEPROM into own function.
In-Reply-To: <1310835342-18877-2-git-send-email-hauke@hauke-m.de>
References: <1310835342-18877-1-git-send-email-hauke@hauke-m.de>
	<1310835342-18877-2-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rxugXiGd87hk_d5tK8NM0m9v_hjJ8o7xyQhkn=j9ocOJg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: ralf@linux-mips.org, linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, jonas.gorski@gmail.com, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com, arnd@arndb.de, julian.calaby@gmail.com, sshtylyov@mvista.com

2011/7/16 Hauke Mehrtens <hauke@hauke-m.de>:
> Move the parsing of the EEPROM data in scan function for one core into
> an own function. Now we are able to use it in some other scan function
> as well.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Acked-by: Rafa? Mi?ecki <zajec5@gmail.com>

-- 
Rafa?
