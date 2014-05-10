From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 10 May 2014 19:24:56 +0200
Subject: [PATCH V2] b43: drop SSB dependency
In-Reply-To: <1399742049-31810-1-git-send-email-zajec5@gmail.com>
References: <1399733088-26607-1-git-send-email-zajec5@gmail.com>
 <1399742049-31810-1-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6ryFO2QzT4OTxRiOwcaT_DBFJCtKU4VRg2HqEMO_91+seA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 10 May 2014 19:14, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> This adds choice submenu "Supported bus types" as two simple bool
> configs would allow user to compile b43 without any bus support
> (prety useless).

John: please make sure this one goes *after*
[PATCH V2] b43: adjust code to compile without SSB

I could do better and send it as a patchset, my bad, sorry.
