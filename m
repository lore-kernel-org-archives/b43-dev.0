From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 18 Nov 2010 17:34:27 +0100
Subject: [PATCH 1/4] b43: N-PHY: fix values for PHY regs in channel tables
	of 2055 radio
In-Reply-To: <4CE54BE2.2070302@lwfinger.net>
References: <1290083280-13550-1-git-send-email-zajec5@gmail.com>
	<4CE54BE2.2070302@lwfinger.net>
Message-ID: <AANLkTimyVO4nQ+W3C9qJLgjQhW1fbFw90ftV1suSzriJ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 18 listopada 2010 16:53 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 11/18/2010 06:27 AM, Rafa? Mi?ecki wrote:
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>
> This change deserves a bit more explanation. You might include something like
> "These tables came from reverse engineering the 5.10.56.46 version of the
> Broadcom driver. Trace comparisons between b43 and the current Broadcom driver
> (5.10.120.0) show byte reversals for the PHY register writes."

I guess you're right, sorry.

Currently I massively use kernel's MMIO tracing to compare wl hybrid
with b43. After comparing dumps from wl and b43 I noticed tables we
wrote from spect fot bytes swapped for PHY registers values. It also
makes more sense to swap bytes if you simply compare values. Now
values are slightly nicely increasing/decreasing in tables.

If someone is interested in the way I dump operations, please just
ask, I'll provide my /toolchain/.

-- 
Rafa?
