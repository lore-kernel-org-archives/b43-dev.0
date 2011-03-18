From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 18 Mar 2011 22:52:59 +0100
Subject: [RFC][PATCH] ssb: separate common scanning functions
In-Reply-To: <1300478510.15393.45.camel@dev.znau.edu.ua>
References: <1300449773-11255-1-git-send-email-zajec5@gmail.com>
	<1300453433.13499.18.camel@dev.znau.edu.ua>
	<AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
	<AANLkTi=EeMKNsi9bxNg4RJre-pP=jqcGpbLPNtggSK0N@mail.gmail.com>
	<1300463392.13499.110.camel@dev.znau.edu.ua>
	<AANLkTi=GggwyGkDB+cBG-G3O2c5WdfjCpb5pk8=3yDKz@mail.gmail.com>
	<1300471917.14872.28.camel@dev.znau.edu.ua>
	<AANLkTikQ7W4GdY=USphz3FphyS-yEwN+X+jUPwq9x_6z@mail.gmail.com>
	<1300478510.15393.45.camel@dev.znau.edu.ua>
Message-ID: <AANLkTi=1XOxwS4tMc6eMcNGeHf_ZGaAH5MC97JsP7oWP@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: George Kashperko <george@znau.edu.ua>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

2011/3/18 George Kashperko <george@znau.edu.ua>:
> ?- read pci revision id/vendor id (pci_read_config_word), if required
> to decide if second window is sliding or sprom (actually rev_id should
> be sufficient for that) read offset 0x0000 from bar0 offset to get
> chipid register value

Could you say something about WIN1 and WIN2? What are they for, can we
use them somehow separately? What do you mean by second window being
SPROM? We read sprom without any special window magic:
sprom[i] = ioread16(bus->mmio + bus->sprom_offset + (i * 2));

My understanding is limited to that:
If we want to use device with CORE_ADDR and WRAP_ADDR we have to write
CORE_ADDR to BAR0_WIN and WRAP_ADDR to BAR0_WIN2. Then we can use
readl/writel.

-- 
Rafa?
