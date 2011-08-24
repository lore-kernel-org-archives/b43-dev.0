From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 24 Aug 2011 21:13:24 +0200
Subject: [RFC][PATCH V2] b43: drop Kconfig option of forcing PIO mode
In-Reply-To: <20110824183128.GJ9770@tuxdriver.com>
References: <1313489647-8979-1-git-send-email-zajec5@gmail.com>
	<20110824183128.GJ9770@tuxdriver.com>
Message-ID: <20110824211324.6f5e36d0@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <larry.finger@lwfinger.net>

On Wed, 24 Aug 2011 14:31:28 -0400
"John W. Linville" <linville@tuxdriver.com> wrote:
> > Larry introduced use_pio with:
> >     b43: Allow PIO mode to be selected at module load
> > I believe we can leave this simple module param and drop
> > CONFIG_B43_FORCE_PIO instead.
> 
> Seems reasonable to me...any objections?
> 

acked by me.

-- 
Greetings, Michael.
