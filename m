From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Mon, 25 Nov 2013 12:32:14 +0100
Subject: b43 / LCN PHY
In-Reply-To: <CAAeT8m84k1iqQk+4nch=DG2+8FPn=Kmues2LuqCwScUmAbfqRQ@mail.gmail.com>
References: <CAAeT8m84k1iqQk+4nch=DG2+8FPn=Kmues2LuqCwScUmAbfqRQ@mail.gmail.com>
Message-ID: <5293353E.7010202@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/25/2013 11:33 AM, Christopher Horler wrote:
> Hi All,
> 
> I enabled the (broken) LCN PHY support.  I understand it's broken, I'm
> not expecting it to work... at least not yet!
> 
> Is anyone looking at this?
> 
> Are there any obvious major blocking issues (so as to avoid unnecessary effort)?
> 
> Chris

I do not think anybody will work on adding support for the LCN PHY
(BCM4313) to b43 any more, because brcmsmac already supports this device.

There is some code missing to make this card working in b43, it is not
working at all, you should use brcmsmac.

Hauke
