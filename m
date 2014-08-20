From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 20 Aug 2014 07:04:18 +0200
Subject: Radiotap Channel Bug
In-Reply-To: <CAP-AUygR-351cngtV5f5NUyitdAay3+az4=_zkWij61wh7iByw@mail.gmail.com>
References: <CAP-AUygR-351cngtV5f5NUyitdAay3+az4=_zkWij61wh7iByw@mail.gmail.com>
Message-ID: <CACna6rwBFAeCW2R+nq+7EALORdsFM+gT0-ne=vv6OUCGZOdAsw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 20 August 2014 01:36, Brandon Enochs <enochs.brandon@gmail.com> wrote:
> With CentOS 6.5, the LP phy type currently suffers from a calculation
> error in the way that it reports the channel on which a frame was
> received up through the mac80211 stack.  It should use the
> b43_channel_to_freq_2ghz function; however, it uses the
> b43_freq_to_channel_2ghz instead.  As a result, the radiotap header
> provides nonsensical values for the channel field.  The following
> patch fixes this issue

Consider updating kernel to some newer version. I know 2.6.32 is a
still supported longterm, but it may miss some things anyway.

It seems the frequency fix was applied back to 3.2 longterm only.
