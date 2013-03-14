From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 13 Mar 2013 19:22:16 -0500
Subject: BCM4312 / b43 DMA transmission sequence errors
In-Reply-To: <1695808.c7XUjJpf0R@wks001.ise.net>
References: <1695808.c7XUjJpf0R@wks001.ise.net>
Message-ID: <51411838.6070402@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: isedev@gmail.com
Cc: b43-dev@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>

On 03/13/2013 05:31 PM, ISE Development wrote:
> Hi,
>
> The wireless connection keeps failing shortly after being established. Up to now, I've tracked it down to a DMA transmission sequence error in ring 3. Beyond that, I cannot say...
>
> Happy to provide further information and to test any potential fixes.

Have you applied the patch that increases the number of RX ring slots? It is 
commit ccae0e50c16a7f and was committed on Feb 17, 2013. That fixed a lot of 
problems on the BCM4312. It seems that the firmware fails to check for overflow 
of the RX ring and blindly corrupts things.

Larry
