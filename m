From: =?UTF-8?Q?Ji=C5=99=C3=AD_N=C4=9Bmec?= <jiri.nemec@klerik.cz>
Date: Wed, 29 Oct 2014 16:45:36 +0100
Subject: Support BCM43142
In-Reply-To: <545109FA.8090201@lwfinger.net>
References: <3814794.9LAMit5dU2@klerik-pc> <545109FA.8090201@lwfinger.net>
Message-ID: <ab9de6bcf7f7db7c0c3c4a91925adc3c@klerik.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Dne , Larry Finger napsal:
> On 10/29/2014 09:53 AM, Ji?? N?mec wrote:
>> Hi,
>> 
>> is planed support in b43 driver for BCM43142 device?
>> 
>> Thanks for information
> 
> Please post the PCI ID as shown by 'lspci -nn'.
> 
> Larry

report from lspci -nn is:
02:00.0 Network controller [0280]: Broadcom Corporation BCM43142 
802.11b/g/n [14e4:4365] (rev 01)

this device is on many notebooks and we must use broadcom sta wl driver. 
this driver works, but not out of box and sometimes are problem with new 
kernel.
