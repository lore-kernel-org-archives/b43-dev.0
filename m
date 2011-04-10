From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 10 Apr 2011 11:20:20 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <BANLkTinQqr-QZ0LuGrhFrkTQPA9Gy7pdew@mail.gmail.com>
References: <4D8F022C.2050606@rostlab.org>
	<AANLkTikdg-ZQ2rDL901A_HZ9TnYiQHG2h-jmhOrM_t6D@mail.gmail.com>
	<BANLkTimiCVU8JL-eMT0v1s1GswC+hwkLFQ@mail.gmail.com>
	<4D9D8D4D.3030603@rostlab.org>
	<BANLkTi=GHKddWTfB1gkhbWvpaG9bsX3zRw@mail.gmail.com>
	<BANLkTimD1kShH+5s2_45WqntYCCgC4_uRg@mail.gmail.com>
	<BANLkTinQqr-QZ0LuGrhFrkTQPA9Gy7pdew@mail.gmail.com>
Message-ID: <BANLkTi=Nj67rVqwdH06A9tKq8=ZUn2xx5Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 10 kwietnia 2011 11:16 u?ytkownik Andy Botting
<andy@andybotting.com> napisa?:
> Hi Rafa?,
>
> I compiled it into my 2.6.38.2 kernel and booted it. When I modprobe'd
> it, I get nothing in dmesg.
>
> Anything else I can try?

Ah, sorry.

Can you modify axi_pci_bridge_tbl in host_pci.c on you own, adding
entry for your PCI ID?

If lspci -nn gives you 14e4:4331, try adding:
{ PCI_DEVICE(PCI_VENDOR_ID_BROADCOM, 0x4331) },
(which exuals to:
{ PCI_DEVICE(0x14e4, 0x4331) },
).

-- 
Rafa?
