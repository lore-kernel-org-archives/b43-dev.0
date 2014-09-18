From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 18 Sep 2014 11:17:31 +0200
Subject: leftover b43-related cruft in drivers/net/wireless?
In-Reply-To: <alpine.LFD.2.11.1409180459100.16448@localhost>
References: <alpine.LFD.2.11.1409180459100.16448@localhost>
Message-ID: <CACna6rwdJxUkThwZf0EYz2GWivPFQSwvqGU6YyJZcT4LR_8G0w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 18 September 2014 11:02, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   i have a shell script that scans selected parts of the kernel source
> tree to locate, among other things, unused config variables in
> Kconfig files, and it identified the following under
> drivers/net/wireless:
>
> $ find_unused_configs.sh drivers/net/wireless
>>>>>> B43_BCMA_PIO
> drivers/net/wireless/b43/Kconfig:113:config B43_BCMA_PIO
>>>>>> B43_BUSES_SSB
> drivers/net/wireless/b43/Kconfig:52:config B43_BUSES_SSB
>>>>>> B43LEGACY_DMA_MODE
> drivers/net/wireless/b43legacy/Kconfig:85:config B43LEGACY_DMA_MODE
>>>>>> B43LEGACY_PCICORE_AUTOSELECT
> drivers/net/wireless/b43legacy/Kconfig:31:config B43LEGACY_PCICORE_AUTOSELECT
>>>>>> B43LEGACY_PIO_MODE
> drivers/net/wireless/b43legacy/Kconfig:92:config B43LEGACY_PIO_MODE
>>>>>> B43_PCICORE_AUTOSELECT
> drivers/net/wireless/b43/Kconfig:68:config B43_PCICORE_AUTOSELECT
>>>>>> B43_PIO
> drivers/net/wireless/b43/Kconfig:119:config B43_PIO
> $
>
>   no real harm, just means that there are Kconfig definitions of the
> above variables that no one appears to be testing for in the entire
> kernel source tree, so they're potentially safe to be removed.

I didn't check all the symbols, but some of them are kind of helpers
for configuring the driver.

For example B43_BUSES_SSB while looks unused, it is here for
select-ing B43_SSB. I wanted to use "choice" to prevent users from
compiling b43 without any bus support which doesn't make much sense.

The same applies to the B43_BCMA_PIO and B43_PIO (this one should be
B43_SSB_PIO actually), they are helpers for selecting PIO support at
bus driver level.
