From: Igor Korot <ikorot01@gmail.com>
Date: Thu, 21 Aug 2014 22:26:36 -0700
Subject: B43 driver problem
In-Reply-To: <CACna6rwkJRKp_cxVPEkJuwV7OVQf0frP1q5RLc9+oWRVN0P+Dg@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <CACna6rwkJRKp_cxVPEkJuwV7OVQf0frP1q5RLc9+oWRVN0P+Dg@mail.gmail.com>
Message-ID: <CA+FnnTy2LENG+W_oXvwKKehHfibmjE3MziRgdNEzOMTG1CRTVg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafal,
[code]
IgorDellGentoo linux # cat .config | grep B43
CONFIG_B43=m
CONFIG_B43_SSB=y
CONFIG_B43_PCI_AUTOSELECT=y
CONFIG_B43_PCICORE_AUTOSELECT=y
# CONFIG_B43_PCMCIA is not set
CONFIG_B43_PIO=y
CONFIG_B43_PHY_N=y
CONFIG_B43_PHY_LP=y
CONFIG_B43_LEDS=y
CONFIG_B43_HWRNG=y
CONFIG_B43_DEBUG=y
# CONFIG_B43LEGACY is not set
CONFIG_SSB_B43_PCI_BRIDGE=y
[/code]

This option is set.

Thank you.


On 8/21/14, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 22 August 2014 05:20, Igor Korot <ikorot01@gmail.com> wrote:
>> [    1.346589] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
>> [    1.363251] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 6, Type 5
>> (LP), Revision 1)
>
> CONFIG_B43_PHY_LP
>
