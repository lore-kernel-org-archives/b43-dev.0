From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 1 Apr 2016 06:59:10 +0200
Subject: [PATCH] PCI: Add Broadcom 4331 reset quirk to prevent IRQ storm
In-Reply-To: <20160331231346.GA7469@localhost>
References: <E1akxli-00030z-BC@bombadil.infradead.org>
 <20160331231346.GA7469@localhost>
Message-ID: <20160401065910.71e602b7@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Bainbridge <chris.bainbridge@gmail.com>
Cc: Lukas Wunner <lukas@wunner.de>, linux-pci@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Fri, 1 Apr 2016 00:13:46 +0100
Chris Bainbridge <chris.bainbridge@gmail.com> wrote:

> Should also fix https://bugzilla.kernel.org/show_bug.cgi?id=111781 ?
> Given that this is a serious bug that can corrupt filesystems it would
> be good to see the fix in stable too.

Wow, this is horrible.

This patch should help a bit. But it's probably hard to workaround that
DMA issue completely. There still is a chance of corruption, as soon as
the kernel allocates and uses some memory that the DMA controller still
uses from boot-up before the fixup is applied.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160401/1265c561/attachment.sig>
