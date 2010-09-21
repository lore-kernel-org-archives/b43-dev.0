From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Tue, 21 Sep 2010 14:47:01 +0200
Subject: [PATCH, RFC] linux-firmware: Add assembler/disassembler toolchain
	for broadcom wireless firmware
Message-ID: <1285073221.32401.24.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2@infradead.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, linux-kernel@vger.kernel.org

This adds a Broadcom wireless firmware assembler/disassembler toolchain
to the linux-firmware git tree.

Supported firmware architectures include r5 (chipsets supported by b43)
and r15 (brcm80211). Support for r5 is complete. r15 support misses support for
decoding of some minor instructions. This is work in progress.
Older chipsets (b43legacy) are not supported.

The instruction set is Broadcom-proprietary. However, no information
about mnemonics was provided by Broadcom. So a new set of mnemonics was invented.

The toolchain passes a complete regression test (disassemble -> reassemble -> binary compare)
on both r5 and r15 firmware.
More information on the instruction set can be found here:
http://bcm-v4.sipsolutions.net/802.11/Microcode
(Lacks some information on new r15 features)

The toolchain is licensed under the GNU/GPL version 2.

Signed-off-by: Michael Buesch <mb@bu3sch.de>

---

A compressed patch is attached. Uncompressed patch can be obtained from here:
http://bu3sch.de/patches/misc/brcm-asm-001.patch


-- 
Greetings Michael.
-------------- next part --------------
A non-text attachment was scrubbed...
Name: brcm-asm-001.patch.bz2
Type: application/x-bzip
Size: 39859 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100921/e9d4bce3/attachment-0001.bin>
