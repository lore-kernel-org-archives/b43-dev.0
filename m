From: Lee Jones <lee.jones@linaro.org>
Date: Thu, 27 Aug 2020 09:49:38 +0100
Subject: [PATCH 07/30] net: wireless: broadcom: b43: main: Add braces
 around empty statements
In-Reply-To: <87zh6gleln.fsf@codeaurora.org>
References: <20200814113933.1903438-1-lee.jones@linaro.org>
 <20200814113933.1903438-8-lee.jones@linaro.org>
 <87v9hll0ro.fsf@codeaurora.org> <20200814164322.GP4354@dell>
 <87eeo9kulw.fsf@codeaurora.org> <20200817085018.GT4354@dell>
 <87zh6gleln.fsf@codeaurora.org>
Message-ID: <20200827084938.GZ3248864@dell>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, Martin Langer <martin-langer@gmx.de>, Stefano Brivio <stefano.brivio@polimi.it>, Michael Buesch <m@bues.ch>, van Dyk <kugelfang@gentoo.org>, Andreas Jaggi <andreas.jaggi@waterwave.ch>, Albert Herranz <albert_herranz@yahoo.es>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org

On Thu, 27 Aug 2020, Kalle Valo wrote:

> Lee Jones <lee.jones@linaro.org> writes:
> 
> > On Fri, 14 Aug 2020, Kalle Valo wrote:
> >
> >> Lee Jones <lee.jones@linaro.org> writes:
> >> 
> >> > On Fri, 14 Aug 2020, Kalle Valo wrote:
> >> >
> >> >> Lee Jones <lee.jones@linaro.org> writes:
> >> >> 
> >> >> > Fixes the following W=1 kernel build warning(s):
> >> >> >
> >> >> >  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_dummy_transmission?:
> >> >> >  drivers/net/wireless/broadcom/b43/main.c:785:3: warning: suggest
> >> >> > braces around empty body in an ?if? statement [-Wempty-body]
> >> >> >  drivers/net/wireless/broadcom/b43/main.c: In function ?b43_do_interrupt_thread?:
> >> >> >  drivers/net/wireless/broadcom/b43/main.c:2017:3: warning: suggest
> >> >> > braces around empty body in an ?if? statement [-Wempty-body]
> >> >> >
> >> >> > Cc: Kalle Valo <kvalo@codeaurora.org>
> >> >> > Cc: "David S. Miller" <davem@davemloft.net>
> >> >> > Cc: Jakub Kicinski <kuba@kernel.org>
> >> >> > Cc: Martin Langer <martin-langer@gmx.de>
> >> >> > Cc: Stefano Brivio <stefano.brivio@polimi.it>
> >> >> > Cc: Michael Buesch <m@bues.ch>
> >> >> > Cc: van Dyk <kugelfang@gentoo.org>
> >> >> > Cc: Andreas Jaggi <andreas.jaggi@waterwave.ch>
> >> >> > Cc: Albert Herranz <albert_herranz@yahoo.es>
> >> >> > Cc: linux-wireless at vger.kernel.org
> >> >> > Cc: b43-dev at lists.infradead.org
> >> >> > Cc: netdev at vger.kernel.org
> >> >> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> >> >> > ---
> >> >> >  drivers/net/wireless/broadcom/b43/main.c | 6 ++++--
> >> >> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >> >> 
> >> >> Please don't copy the full directory structure to the title. I'll change
> >> >> the title to more simple version:
> >> >> 
> >> >> b43: add braces around empty statements
> >> >
> >> > This seems to go the other way.
> >> >
> >> > "net: wireless: b43" seems sensible.
> >> 
> >> Sorry, not understanding what you mean here.
> >
> > So I agree that:
> >
> >   "net: wireless: broadcom: b43: main"
> >
> > ... seems unnecessarily long and verbose.  However, IMHO:
> >
> >   "b43:"
> >
> > ... is too short and not forthcoming enough.  Obviously this fine when
> > something like `git log -- net/wireless`, as you already know what the
> > patch pertains to, however when someone who is not in the know (like I
> > would be) does `git log` and sees a "b43:" patch, they would have no
> > idea which subsystem this patch is adapting.  Even:
> >
> >   "wireless: b43:"
> >
> > ... would be worlds better.
> >
> > A Git log which omitted all subsystem tags would be of limited use.
> 
> There are good reasons why the style is like it is. If I would start
> adding "wireless:" tags to the title it would clutter 'git log
> --oneline' and gitk output, which I use all the time. And I'm not
> interested making my work harder, there would need to be really strong
> reasons why I would even recondiser changing it.
> 
> BTW, this is also documented in our wiki:
> 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong

Documented or otherwise, it's still odd.

Yes, it's okay for *you* being the Maintainer of Wireless, but by
keeping your own workspace clutter free you obfuscate the `git log`
for everyone else.

I can't find another subsystem that does this:

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/scsi | cat
0c1a65a347227 scsi: pm8001: pm8001_hwi: Remove unused variable 'value'
beccf4070cabd scsi: pm8001: pm8001_sas: Fix strncpy() warning
50e619cb0966b scsi: arcmsr: arcmsr_hba: Make room for the trailing NULL, even if it is over-written
9c6c4a4606ecf scsi: megaraid: megaraid_sas_base: Provide prototypes for non-static functions
32417d7844ab0 scsi: esas2r: Remove unnecessary casts

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/i2c | cat
ab70935d37bbd i2c: Remove 'default n' from busses/Kconfig
0204081128d58 i2c: iproc: Fix shifting 31 bits
914a7b3563b8f i2c: rcar: in slave mode, clear NACK earlier
e4682b8a688bc i2c: acpi: Remove dead code, i.e. i2c_acpi_match_device()
e3cb82c6d6f6c i2c: core: Don't fail PRP0001 enumeration when no ID table exist

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/spi | cat
b0e37c5157332 spi: spi-fsl-espi: Remove use of %p
2ea370a9173f4 spi: spi-cadence-quadspi: Populate get_name() interface
20c05a0550636 spi: spi-fsl-dspi: delete EOQ transfer mode
df561f6688fef treewide: Use fallthrough pseudo-keyword
c76964e810a55 spi: imx: Remove unneeded probe message

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/nfc/ | cat
f97c04c316d8f NFC: st95hf: Fix memleak in st95hf_in_send_cmd
df561f6688fef treewide: Use fallthrough pseudo-keyword
f8c931f3be8dd nfc: st21nfca: Remove unnecessary cast
0eddbef6489cf nfc: st-nci: Remove unnecessary cast
1e8fd3a97f2d8 nfc: s3fwrn5: add missing release on skb in s3fwrn5_recv_frame

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/misc | cat
e19e862938acf misc: ocxl: config: Rename function attribute description
ca99b8bdf84ef misc: c2port: core: Make copying name from userspace more secure
99363d1c26c82 eeprom: at24: Tidy at24_read()
df561f6688fef treewide: Use fallthrough pseudo-keyword
5aba368893c0d habanalabs: correctly report inbound pci region cfg error

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/iio | cat
fc2404e94d3fb iio: industrialio-trigger: Use 'gnu_printf' format notation
e4130d150831b iio: imu: adis16400: Provide description for missing struct attribute 'avail_scan_mask'
4a6b899005ef5 iio: adc: mcp320x: Change ordering of compiler attribute macro
96d7124f00e62 iio: gyro: adxrs450: Change ordering of compiler attribute macro
21ef78342f557 iio: resolver: ad2s1200: Change ordering of compiler attribute macro

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/firmware/ | cat
9bbb6d7de490a efi/fake_mem: arrange for a resource entry per efi_fake_mem instance
f75fa0a51b8b5 efi: Rename arm-init to efi-init common for all arch
92efdc54a2c04 RISC-V: Add EFI stub support.
8a8a3237a78cb efi/libstub: Handle unterminated cmdline
a37ca6a2af9df efi/libstub: Handle NULL cmdline

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/remoteproc/ | cat
df561f6688fef treewide: Use fallthrough pseudo-keyword
62b8f9e99329c remoteproc: core: Register the character device interface
4476770881d7a remoteproc: Add remoteproc character device interface
2f3ee5e481ce8 remoteproc: kill IPA notify code
87218f96c21a9 remoteproc: k3-dsp: Add support for C71x DSPs

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/dma | cat
78a2f92e4c4a3 dmaengine: axi-dmac: add support for reading bus attributes from registers
3061a65c1b3db dmaengine: axi-dmac: wrap channel parameter adjust into function
06b6e88c7ecf4 dmaengine: axi-dmac: wrap entire dt parse in a function
08b36dba23e5b dmaengine: axi-dmac: move clock enable earlier
a88fdece44d40 dmaengine: axi-dmac: move active_descs list init after device-tree init

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/clk | cat
0b8056106c02b clk: imx: vf610: Add CRC clock
7d6b5e4f24457 clk: imx: Explicitly include bits.h
e0d0d4d86c766 clk: imx8qxp: Support building i.MX8QXP clock driver as module
9a976cd278eaf clk: imx8m: Support module build
f1f018dc030ed clk: imx: Add clock configuration for ARMv7 platforms

lee at dell:~/projects/linux/kernel [tb-fix-w1-warnings]$ git log --oneline --follow --no-merges -5 drivers/crypto | cat
3033fd177bcc3 crypto: stm32 - Add missing header inclusions
df561f6688fef treewide: Use fallthrough pseudo-keyword
1b77be463929e crypto/chcr: Moving chelsio's inline ipsec functionality to /drivers/net
44fd1c1fd8219 chelsio/chtls: separate chelsio tls driver from crypto driver
3d29e98d1d755 crypto: hisilicon/qm - fix the process of register algorithms to crypto

-- 
Lee Jones [???]
Senior Technical Lead - Developer Services
Linaro.org ? Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
