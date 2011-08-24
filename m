From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 24 Aug 2011 20:57:01 +0100
Subject: [PATCH] b43: HT-PHY: init: add missing small-tables writes
In-Reply-To: <87pqjuofq3.fsf@purkki.adurom.net>
References: <1313250844-4526-1-git-send-email-zajec5@gmail.com>
	<CACna6rwoyPuwnzcw4BR5dmOiX9ogsTbquaG6qwRMZtLZytNnoA@mail.gmail.com>
	<20110823134932.GB9770@tuxdriver.com>
	<1314118360.21805.126.camel@shinybook.infradead.org>
	<87pqjuofq3.fsf@purkki.adurom.net>
Message-ID: <1314215822.21805.141.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@adurom.com>
Cc: "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Wed, 2011-08-24 at 20:56 +0300, Kalle Valo wrote:
> That's true, but setting up git tree for wireless is not trivial and
> not for the faint of heart. Especially due to differences between
> wireless-next and wireless-testing. Sending a patch series is a lot
> easier and causes less tears. 

Most of the time it wouldn't need to be based on wireless-testing. It
could just be based on Linus's last release. If wireless-next is
actually a real stable git tree, it could perhaps be based on that too.

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 5818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110824/655c74a8/attachment.bin>
