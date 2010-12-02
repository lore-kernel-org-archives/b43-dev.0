From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 Dec 2010 18:59:25 +0100
Subject: [RFC/RFT] ssb: Attempt to recover from SPROM CRC error
In-Reply-To: <4cf7cb25.SwkH7gALTG7E00Zb%Larry.Finger@lwfinger.net>
References: <4cf7cb25.SwkH7gALTG7E00Zb%Larry.Finger@lwfinger.net>
Message-ID: <AANLkTikchuCXgBA+JqFEOUgrQFrhorP=n1UYvWOZpApp@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2010/12/2 Larry Finger <Larry.Finger@lwfinger.net>:
> + ? ? ? ? ? ? ? ? ? ? ? revision = buf[SSB_SPROMSIZE_WORDS_R4 - 1] & 0x00FF;

Should we define macro for that, to do not duplicate code from this part:
sprom_extract(...):
out->revision = in[size - 1] & 0x00FF;
?

I don't vote for any solution, but maybe one should be preferred and
you just didn't notice that? I noone have problem with this liiitle
duplication, ignore me ;)

-- 
Rafa?
