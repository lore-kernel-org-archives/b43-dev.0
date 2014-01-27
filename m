From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 27 Jan 2014 09:43:24 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs
 to determine BSS channel"
In-Reply-To: <CACna6ryDakV+oo6pW1BN5rcDPqR9=1khUHtYqmtTf85JR5x2Lg@mail.gmail.com>
 (sfid-20140126_153740_663759_6A0F67EA)
References: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
 <CACna6ryDakV+oo6pW1BN5rcDPqR9=1khUHtYqmtTf85JR5x2Lg@mail.gmail.com>
 (sfid-20140126_153740_663759_6A0F67EA)
Message-ID: <1390812204.4251.1.camel@jlt4.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Sun, 2014-01-26 at 15:37 +0100, Rafa? Mi?ecki wrote:

> >     cfg80211: use DS or HT operation IEs to determine BSS channel
> 
> This has been finally fixed in 64e5acb09ca6b50c97299cff9ef51299470b29f2 [0].

It's no wonder I couldn't find it to be bad in the above commit though -
the breakage is two years older than that ... oh well. I'm surprised by
how little problematic this seems to have been.

johannes
