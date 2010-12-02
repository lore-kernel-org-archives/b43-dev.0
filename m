From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 Dec 2010 18:55:45 +0100
Subject: [RFC/RFT] ssb: Attempt to recover from SPROM CRC error
In-Reply-To: <4cf7cb25.SwkH7gALTG7E00Zb%Larry.Finger@lwfinger.net>
References: <4cf7cb25.SwkH7gALTG7E00Zb%Larry.Finger@lwfinger.net>
Message-ID: <AANLkTi=eFis8_Z6f2VXsuB2ojhygtkEFYnrr8ZXbyNwF@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2010/12/2 Larry Finger <Larry.Finger@lwfinger.net>:
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? if (buf[SSB_SPROM4_SIG >> 1] == 0x5372)
> + ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? sprom->revision = revision;

Please use SPOFF macro for determining offset in buf.

-- 
Rafa?
