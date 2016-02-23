From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 23 Feb 2016 16:51:02 +0100
Subject: USI chip driver compatibility
In-Reply-To: <CAPb8FP+HBJt0ALBQ65U+dx7VoZdupEh6+0ojvmLkr26v5X5eDg@mail.gmail.com>
References: <CAPb8FPKDuLpYq+uDrZnDnWbyNN+WCmU_pRiUpj3nHs31YDxEFg@mail.gmail.com>
 <CACna6rzeaE0ReDEmxXYLk=DCMx8Q4YSOU4GH5nLZsNVrc687UQ@mail.gmail.com>
 <CAPb8FP+HBJt0ALBQ65U+dx7VoZdupEh6+0ojvmLkr26v5X5eDg@mail.gmail.com>
Message-ID: <CACna6rz7R5tAqZ6_yNFrEtqQ1bmtzASC6dcHBsweqozbWZhobw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 23 February 2016 at 16:36, Chaitanya Mannem
<chaitanyamannem@gmail.com> wrote:
> I think my google skills suck then cause I looked for hours or I'm
> just blind and didn't catch that. Now here's my main question, even
> though the chip says its based off of bcm4330, does that means drivers
> will work for it since this chip isn't from broadcom but from USI.

Please don't drop ML from To/Cc.

I don't think USI did any modifications to this chip, especially since
it's a FullMAC device. So it most likely should work for you. Maybe
you will just need adding another SDIO device ID to brcmfmac table.

For further help try brcm80211 ML as this one is for b43 driver (for
SoftMAC devices).
