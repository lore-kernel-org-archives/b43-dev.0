From: Jonas Gorski <jogo@openwrt.org>
Date: Sun, 20 Jul 2014 14:10:29 +0200
Subject: [PATCH 2/2] b43: N-PHY: support setting custom TX power
In-Reply-To: <CACna6rw=VWjTEmQTeKzWtqhfejFEExnvqHMhWU3hjJ3m0CWGvw@mail.gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <1405854022-11833-2-git-send-email-zajec5@gmail.com>
 <CAOiHx=mi0jJQycjJSNjJ3rXrjQEB2N6JP3yg6vqcDN82tZHjzg@mail.gmail.com>
 <CACna6rw=VWjTEmQTeKzWtqhfejFEExnvqHMhWU3hjJ3m0CWGvw@mail.gmail.com>
Message-ID: <CAOiHx=mR0NKdpXuGKvSXVm-71vhor3eSiSF58+mY43MAddfwSA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sun, Jul 20, 2014 at 1:53 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 20 July 2014 13:49, Jonas Gorski <jogo@openwrt.org> wrote:
>> On Sun, Jul 20, 2014 at 1:00 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>> diff --git a/drivers/net/wireless/b43/phy_n.h b/drivers/net/wireless/b43/phy_n.h
>>> index 30bec81..252d843 100644
>>> --- a/drivers/net/wireless/b43/phy_n.h
>>> +++ b/drivers/net/wireless/b43/phy_n.h
>>> @@ -967,6 +967,9 @@ struct b43_phy_n {
>>>         struct b43_phy_n_txpwrindex txpwrindex[2];
>>>         struct b43_phy_n_pwr_ctl_info pwr_ctl_info[2];
>>>         struct b43_chanspec txiqlocal_chanspec;
>>> +       struct b43_ppr *tx_pwr_max_ppr;
>>
>> Why not just make this a struct member? As far as I can tell, it will
>> always be allocated, and you would lose one alloc/free call, and
>> probably one pointer dereference.
>
> My idea was to prevent driver parts from knowing PPR implementation
> details. Just to don't mess with its internals and allow redesigning
> in the future. That is why I put "struct b43_ppr_rates" in .c file and
> all other driver parts use a pointer only.

If this were a library used by several drivers I could understand. But
hiding things from yourself? Seriously? ;P

>
> Seriously, I doubt in the sense of posting RFCs :P

I know that feel :p. I usually try to do a thorough code review if I
review, and was missing the time when you posted the RFC. Also I'm
usually a bit more lenient with RFCs as I assume this is usually a
request for commenting on the intend of the code, and less for finding
nitpicks/bugs.


Jonas
