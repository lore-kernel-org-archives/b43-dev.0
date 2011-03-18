From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 18 Mar 2011 20:04:27 +0100
Subject: [RFC][PATCH] ssb: separate common scanning functions
In-Reply-To: <1300471917.14872.28.camel@dev.znau.edu.ua>
References: <1300449773-11255-1-git-send-email-zajec5@gmail.com>
	<1300453433.13499.18.camel@dev.znau.edu.ua>
	<AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
	<AANLkTi=EeMKNsi9bxNg4RJre-pP=jqcGpbLPNtggSK0N@mail.gmail.com>
	<1300463392.13499.110.camel@dev.znau.edu.ua>
	<AANLkTi=GggwyGkDB+cBG-G3O2c5WdfjCpb5pk8=3yDKz@mail.gmail.com>
	<1300471917.14872.28.camel@dev.znau.edu.ua>
Message-ID: <AANLkTikQ7W4GdY=USphz3FphyS-yEwN+X+jUPwq9x_6z@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: George Kashperko <george@znau.edu.ua>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

2011/3/18 George Kashperko <george@znau.edu.ua>:
>> I don't see the point where my patch is in conflict with your idea.
> Not your patch, just scan_read32, scan_switchcore, ssb_iounmap,
> ssb_ioremap. So far ssb_core_name is fine.
> Yet again, ssb code model is core-sentric which is not actually true
> from the hardware pint of view. With few workarounds it works fine for
> sb. For axi we will have more of these.
>
> scan_read32, scan_switchcore, ssb_iounmap, ssb_ioremap are all
> host-driven services. In ssb model host is operating cores and therefore
> requires all that switch, scan_read, map, unmap etc. While with model
> where host is providing not core but backplane access the only routine
> among those above you need is scan_read32 and nothing more (actually you
> don't need it too as host ops with read(8|16|32) are completely
> sufficient for scanning). The purpose of scan_read32 for ssb model is
> that ssb_bus_ops are operating cores which you don't have at the moment
> when scanning. With host ops designed as u32 (*read32)(struct host
> *host, phys_addr_t addr) host will do what it supposed to - manage its
> means of backplane physical access and will have absolutely no need to
> break into understanding what the core/sprom/otp/etc. is.

That's what I wanted to hear from the beginning, thanks! :)

The reason I implemented scan_switchcore is early stage, when I
prepare bus for reading EROM:
erombase = ai_scan_read32(bus, 0, SSB_CHIPCO_EROM);
pci_write_config_dword(bus->host_pci, PCI_BAR0_WIN, erombase);
In above you can see my hack which works for PCI host only. This hack
I wanted to replace with scan_switchcore and that functions seems to
perform exactly this operation.

AFAIU we need to adjust PCI_BAR0_WIN and PCI_BAR0_WIN2 later, when we
already have info about core from EROM. In early stage we can not use
that.

Anyway with what you said now, I'll re-read your mails again, to fully
understand your POV.

-- 
Rafa?
