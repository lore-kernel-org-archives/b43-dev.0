From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 4 Mar 2015 17:38:05 +0100
Subject: [PATCH] bcma: Kconfig: Let it depend on PCI
In-Reply-To: <CACna6rxtvwQxrsRuRt0XLAyQg5rKFf2VqNm6Vrzic5gMCbJDcg@mail.gmail.com>
References: <BLU436-SMTP3656F4A0610686DAE30BA1B9110@phx.gbl>
 <CACna6rxJ_uQHmpQS9NPs9JW=zNS4oc2-_cH6nXG0Z9CWu7iW7A@mail.gmail.com>
 <CACna6ryi4ACAfkYRDGTWkwGh9PQrj9zxcnaWjO56m1dyhmiFGA@mail.gmail.com>
 <CACna6rxtvwQxrsRuRt0XLAyQg5rKFf2VqNm6Vrzic5gMCbJDcg@mail.gmail.com>
Message-ID: <20150304173805.3daea9c5@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Chen Gang <xili_gchen_5257@hotmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Hauke Mehrtens <hauke@hauke-m.de>, Larry Finger <Larry.Finger@lwfinger.net>, Arnd Bergmann <arnd@arndb.de>

On Wed, 4 Mar 2015 14:36:10 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Any other opinions?

I think this is the only way to go.
In ssb we always had optional pcicore driver, as far as I remember,
so we should have the same in bcma, too.
The old WRT54G kernel used to compile just fine with SSB and without any PCI enabled.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150304/149b38f6/attachment.sig>
