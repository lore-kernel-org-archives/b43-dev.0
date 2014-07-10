From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 10 Jul 2014 23:23:25 +0200
Subject: [PATCH] b43: always print info about radio (manuf, id, revision)
In-Reply-To: <1404320863-13372-1-git-send-email-zajec5@gmail.com>
References: <1404320863-13372-1-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rw+h_DtxxsvEp1Obp2B8zmnquvDXeoOmqMY-kPUpwXZ4w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 2 July 2014 19:07, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> Type of radio has a major meaning for the driver. There is quite some
> code that does initialization/calibration depending on the radio rev.
> Knowing radio params is quite important to provide help to users, so
> print it even with debugging disabled.
>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> This increases amount of lines that are always printed by b43 from 3 to
> 4. Do you think it's still acceptable? I'd really like to know what
> radio are using ppl reporting any problems.

John: since there weren't any objections for a week, please take this patch.
