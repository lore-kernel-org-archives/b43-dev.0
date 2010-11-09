From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 09 Nov 2010 06:50:07 -0600
Subject: bug in wireless driver
In-Reply-To: <20101109091326.310930@gmx.net>
References: <20101109091326.310930@gmx.net>
Message-ID: <4CD9437F.1080005@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/09/2010 03:13 AM, Werner Nagel wrote:
> Hallo Larry,
> 
> there is an attached file with the dmesg output.

When you reply to a mail message, please use the "Reply to All" option. I had
also sent your message to the b43 mailing list.

Your dmesg output does not indicate any kind of error, just that the connection
to the AP is lost and there is no probe response for 500 ms. There are known
deficiencies in the driver for the 14e4:4315 devices as some of the features
from the reverse-engineering work are not yet implemented. That said, my card
does not have the problem that you see. If possible, changing the channel on the
AP might help as interference may be the problem. Some users report that the
Broadcom wl driver works better for them. That is not the case on my system, but
it might be on yours.

Larry
