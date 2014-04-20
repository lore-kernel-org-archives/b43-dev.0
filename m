From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 21 Apr 2014 00:36:51 +0200
Subject: [wireless-next][PATCH 1/2] b43: ssb: refuse to support more
 than IEEE 802.11 core
In-Reply-To: <CACna6rwjEP8qZ+SWQEOREmr=4wBJSgeNY_mG5GQpOWem7Jgrgw@mail.gmail.com>
References: <1398018659-17263-1-git-send-email-zajec5@gmail.com>
 <20140420205452.79a95330@wiggum>
 <CACna6rwjEP8qZ+SWQEOREmr=4wBJSgeNY_mG5GQpOWem7Jgrgw@mail.gmail.com>
Message-ID: <20140421003651.594f14c0@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sun, 20 Apr 2014 21:29:01 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Do you think it's OK to push this small patchset and continue cleaning
> process later? I'm afraid it may take a lot of time to clean in
> completely and patchset would be huge. That's why I wanted to handle
> it with small steps.

Yes absolutely. The changes are huge and small steps are appreciated.
Try moving variables one group at a time. Not one huge patch that moves everything.
Nobody would be able to review that.

-- 
Michael.

----
Please use PGP/GPG encryption.
Key-ID: F532BE1D908D8B0E
--------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140421/a23c3fc9/attachment.sig>
