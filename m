From: Chaitanya Mannem <chaitanyamannem@gmail.com>
Date: Tue, 23 Feb 2016 12:07:03 -0500
Subject: USI chip driver compatibility
In-Reply-To: <CACna6rz7R5tAqZ6_yNFrEtqQ1bmtzASC6dcHBsweqozbWZhobw@mail.gmail.com>
References: <CAPb8FPKDuLpYq+uDrZnDnWbyNN+WCmU_pRiUpj3nHs31YDxEFg@mail.gmail.com>
 <CACna6rzeaE0ReDEmxXYLk=DCMx8Q4YSOU4GH5nLZsNVrc687UQ@mail.gmail.com>
 <CAPb8FP+HBJt0ALBQ65U+dx7VoZdupEh6+0ojvmLkr26v5X5eDg@mail.gmail.com>
 <CACna6rz7R5tAqZ6_yNFrEtqQ1bmtzASC6dcHBsweqozbWZhobw@mail.gmail.com>
Message-ID: <CAPb8FP+wac724Bs5sQcBjGe1Yu_7s0bSpJfoJCgqase2xuoZrw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I did not mean to drop the mailinglist, this is my first time using
one. I hit reply instead of reply all. Thanks for the info, appreciate
it. I'll have a chat with them.

On Tue, Feb 23, 2016 at 10:51 AM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 23 February 2016 at 16:36, Chaitanya Mannem
> <chaitanyamannem@gmail.com> wrote:
>> I think my google skills suck then cause I looked for hours or I'm
>> just blind and didn't catch that. Now here's my main question, even
>> though the chip says its based off of bcm4330, does that means drivers
>> will work for it since this chip isn't from broadcom but from USI.
>
> Please don't drop ML from To/Cc.
>
> I don't think USI did any modifications to this chip, especially since
> it's a FullMAC device. So it most likely should work for you. Maybe
> you will just need adding another SDIO device ID to brcmfmac table.
>
> For further help try brcm80211 ML as this one is for b43 driver (for
> SoftMAC devices).
