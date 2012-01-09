From: Peter Stuge <peter@stuge.se>
Date: Mon, 9 Jan 2012 23:25:44 +0100
Subject: BCM43231
In-Reply-To: <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
Message-ID: <20120109222544.11008.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Abimanyu Gottumukkala <me@abimanyu.in>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org

Rafa? Mi?ecki wrote:
> I've been using "usbmon" to dump traffic.

The tool at http://people.redhat.com/zaitcev/linux/usbmon-6.tar.gz
and not simply cat on the usbmon files in debugfs I hope.

debugfs only shows the first bytes of long transfers, but the API
used by the usbmon-6 tool shows complete traffic.


//Peter
