From: Robert P. J. Day <rpjday@crashcourse.ca>
Date: Thu, 18 Sep 2014 05:02:53 -0400 (EDT)
Subject: leftover b43-related cruft in drivers/net/wireless?
Message-ID: <alpine.LFD.2.11.1409180459100.16448@localhost>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


  i have a shell script that scans selected parts of the kernel source
tree to locate, among other things, unused config variables in
Kconfig files, and it identified the following under
drivers/net/wireless:

$ find_unused_configs.sh drivers/net/wireless
>>>>> B43_BCMA_PIO
drivers/net/wireless/b43/Kconfig:113:config B43_BCMA_PIO
>>>>> B43_BUSES_SSB
drivers/net/wireless/b43/Kconfig:52:config B43_BUSES_SSB
>>>>> B43LEGACY_DMA_MODE
drivers/net/wireless/b43legacy/Kconfig:85:config B43LEGACY_DMA_MODE
>>>>> B43LEGACY_PCICORE_AUTOSELECT
drivers/net/wireless/b43legacy/Kconfig:31:config B43LEGACY_PCICORE_AUTOSELECT
>>>>> B43LEGACY_PIO_MODE
drivers/net/wireless/b43legacy/Kconfig:92:config B43LEGACY_PIO_MODE
>>>>> B43_PCICORE_AUTOSELECT
drivers/net/wireless/b43/Kconfig:68:config B43_PCICORE_AUTOSELECT
>>>>> B43_PIO
drivers/net/wireless/b43/Kconfig:119:config B43_PIO
$

  no real harm, just means that there are Kconfig definitions of the
above variables that no one appears to be testing for in the entire
kernel source tree, so they're potentially safe to be removed.

  feel free to do with that what you will.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
