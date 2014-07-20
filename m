From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Jul 2014 13:02:11 +0200
Subject: [PATCH 2/2] b43: N-PHY: support setting custom TX power
In-Reply-To: <1405854022-11833-2-git-send-email-zajec5@gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <1405854022-11833-2-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rywJpbGSyFzGNBy6n46yChtHnewwyXDX2p6wz0ztt24HQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 20 July 2014 13:00, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> This is based on top of
> [PATCH 7/7] b43: enable radio 0x2057 rev 14 support (AKA BCM43217)
> (not sure if applies cleanly otherwise)

Forgot to say. I've tested this on BCM4321, BCM4322, BCM43224,
BCM43217 and BCM43228. No performance regressions observed, so I guess
my code doesn't do anything stupid ;)
