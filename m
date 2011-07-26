From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Jul 2011 10:55:47 -0500
Subject: [PATCH 2/2] b43legacy: remove asm/atomic.h includes as suggested
	by checkpatch.pl
In-Reply-To: <20110726153655.24611.76833.stgit@mj.roinet.com>
References: <20110726153648.24611.49190.stgit@mj.roinet.com>
	<20110726153655.24611.76833.stgit@mj.roinet.com>
Message-ID: <4E2EE383.4040403@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>

On 07/26/2011 10:36 AM, Pavel Roskin wrote:
> Including linux/atomic.h doesn't appear to be necessary.
>
> Signed-off-by: Pavel Roskin<proski@gnu.org>

As b43 manages to also do atomic operations without this header, this patch 
should be OK for all architectures.

ACKed-by: Larry Finger <Larry.Finger@lwfinger.net>
