From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 10 Jan 2012 08:00:48 +0100
Subject: BCM43231
In-Reply-To: <20120109222544.11008.qmail@stuge.se>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
 <20120109222544.11008.qmail@stuge.se>
Message-ID: <CACna6ryJT1Nw8Yxrj8CftERjO=y7kYc-9cTP5Bj-N-=NniAhdg@mail.gmail.com>
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

I think I start to understand. The number before "<" or "=" or ">" is
amount of bytes. For example:

ea700b40 493839847 S Bi:2:003:6 -115 8 <
We just asked for 8 bytes

ea700b40 493840818 C Bi:2:003:6 0 8 = 00060456 00000000
Here we received the 8 bytes.

f3dad540 493840838 S Bi:2:003:6 -115 13 <
We asked for 13 bytes.

f3dad540 493840923 C Bi:2:003:6 0 13 = 55534253 0a1a0000 00000000 00
The requested 13 bytes.

Now some bigger amount:

eb48d640 504977573 S Ci:2:010:0 s 80 06 0200 0000 0027 39 <
Asking for 39bytes?

eb48d640 504977936 C Ci:2:010:0 0 39 = 09022700 010100a0 64090400
0003ff02 ff000705 81031000 04070582 02000200
Only 32bytes received?

Is this the issue you meant? Am I correctly parsing that dumps?



I've quickly tried usbmon userspace tool, but not much more luck with
it. Example from this tool:

f2c19e40 6.317817 S Ci:2:013:0 s 80 06 0200 0000 0027 39 <
f2c19e40 6.318305 C Ci:2:013:0 0 39 =
    09022700 010100a0 64090400 0003ff02 ff000705 81031000 04070582 02000200
     . . ' .  . . . .  d . . .  . . . .  . . . .  . . . .  . . . .  . . . .

Maybe it requires some switch or sth... unfortunately it's not
documented@all ;/

-- 
Rafa?
