From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 30 Mar 2010 13:06:53 -0500
Subject: [RFC][PATCH][WIP] b43: N-PHY: set band width
In-Reply-To: <1269971657-4663-1-git-send-email-zajec5@gmail.com>
References: <1269971657-4663-1-git-send-email-zajec5@gmail.com>
Message-ID: <4BB23DBD.8080904@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 03/30/2010 12:54 PM, Rafa? Mi?ecki wrote:
> ---
> I've problem with deciding how to keep some data needed by band width setting
> code. Generally these band width-related routines are considered "common", to
> be used by more than just N-PHY. So probably the most /correct/ way should be
> to add some variables like maccontrol, wake_override, clk and other to struct
> b43_phy which is shared between all PHYs. However we would not use these vars
> in anything except N-PHY, so we would just waste users memory.
> 
> Could you help me decide correct way to handle this?

I have not done the RE yet, but the SSLPN PHY is multi-band and will likely need
all the band width parameters needed by the N PHY. I would vote for putting them
in a "common" struct.

Larry
