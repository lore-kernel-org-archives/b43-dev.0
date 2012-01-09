From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 9 Jan 2012 23:28:24 +0100
Subject: BCM43231
In-Reply-To: <20120109222544.11008.qmail@stuge.se>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
 <20120109222544.11008.qmail@stuge.se>
Message-ID: <CACna6rx_q6J4PU0ucX+ZJqqkzpp24pf3Mz+Od2HPtVg8w-r1pQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Abimanyu Gottumukkala <me@abimanyu.in>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org

W dniu 9 stycznia 2012 23:25 u?ytkownik Peter Stuge <peter@stuge.se> napisa?:
> Rafa? Mi?ecki wrote:
>> I've been using "usbmon" to dump traffic.
>
> The tool at http://people.redhat.com/zaitcev/linux/usbmon-6.tar.gz
> and not simply cat on the usbmon files in debugfs I hope.
>
> debugfs only shows the first bytes of long transfers, but the API
> used by the usbmon-6 tool shows complete traffic.

I was just using
cat /sys/kernel/debug/usb/usbmon/0u

I didn't see info about eating the rest of transfer in
Documentation/usb/usbmon.txt. Thanks for the tip, I'll give it a
chance tomorrow.

-- 
Rafa?
