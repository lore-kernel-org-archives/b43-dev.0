From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Tue, 10 Jan 2012 00:14:09 +0100
Subject: BCM43231
In-Reply-To: <CACna6rx_q6J4PU0ucX+ZJqqkzpp24pf3Mz+Od2HPtVg8w-r1pQ@mail.gmail.com>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzA6ix2PrZDHXQLTDQuo942urtUAWYagDC0x9zANSVNKQ@mail.gmail.com>
 <20120109222544.11008.qmail@stuge.se>
 <CACna6rx_q6J4PU0ucX+ZJqqkzpp24pf3Mz+Od2HPtVg8w-r1pQ@mail.gmail.com>
Message-ID: <CA+XFjiqdiAwaZmN9PLQhmvxHNZ1Bgkr-NwHb4nLaP5PWm2eU8w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: Abimanyu Gottumukkala <me@abimanyu.in>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org

2012/1/9 Rafa? Mi?ecki <zajec5@gmail.com>:
> W dniu 9 stycznia 2012 23:25 u?ytkownik Peter Stuge <peter@stuge.se> napisa?:
>> Rafa? Mi?ecki wrote:
>>> I've been using "usbmon" to dump traffic.
>>
>> The tool at http://people.redhat.com/zaitcev/linux/usbmon-6.tar.gz
>> and not simply cat on the usbmon files in debugfs I hope.
>>
>> debugfs only shows the first bytes of long transfers, but the API
>> used by the usbmon-6 tool shows complete traffic.
>
> I was just using
> cat /sys/kernel/debug/usb/usbmon/0u
>
> I didn't see info about eating the rest of transfer in
> Documentation/usb/usbmon.txt. Thanks for the tip, I'll give it a
> chance tomorrow.

This information, if true, should go into Documentation/usb/usbmon.txt.
