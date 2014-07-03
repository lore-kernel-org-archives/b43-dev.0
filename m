From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 3 Jul 2014 14:50:21 +0200
Subject: Looking for someone with BCM43227 and (maybe) compilation skill ;
 )
In-Reply-To: <CACna6rxVjnpMgQx9+d_LbROYNnnjnuMEGo-38MPwjsPtxYdN8w@mail.gmail.com>
References: <CACna6rxVjnpMgQx9+d_LbROYNnnjnuMEGo-38MPwjsPtxYdN8w@mail.gmail.com>
Message-ID: <CACna6rx+EkoCPQ06qDTbaDFEJ1hrn_CYSbrPmosF0ikhkqDxpA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

On 3 July 2014 14:32, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> I want to add support for BCM43227 in b43, however I need help of some
> BCM43227 owner. Well, I could buy one by myself (less than 10$ on
> eBay), but I don't want to wait a month to receive it.
>
> So I need someone with:
> 1) BCM43227 ;)
> 2) Kernel with CONFIG_MMIOTRACE=y*
> 3) Broadcom Linux STA driver 6.30.223.141
>
> So? Is there anyone around with BCM43227 willing to help?

I'd need someone to:
1) Disable NetworkManager & blacklist wl
2) Make a cold boot (power off for 3 seconds)
3) Run attached script
4) Provide me /tmp/dump.txt (preferably compressed)
-------------- next part --------------
A non-text attachment was scrubbed...
Name: mmiotrace.sh
Type: application/x-sh
Size: 744 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140703/80fa9565/attachment.sh>
