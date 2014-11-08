From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 8 Nov 2014 17:36:51 +0100
Subject: [PATCH v2 3.18+] b43: fix NULL pointer dereference in
 b43_phy_copy()
In-Reply-To: <1415451582-5610-1-git-send-email-hauke@hauke-m.de>
References: <1415451582-5610-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rz72_CS_Zrc28qTWWeBnA=x51cBe7Pg6a3Tyt0ejUORNQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: John Linville <linville@tuxdriver.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, andrey.krieger.utkin@gmail.com, v.kempter@pe.tu-clausthal.de

On 8 November 2014 13:59, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> phy_read and phy_write are not set for every phy any more sine this:
> commit d342b95dd735014a590f9051b1ba227eb54ca8f6

Looks OK, thanks for your patch!
