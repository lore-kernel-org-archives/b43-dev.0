From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 14 Jul 2012 09:54:56 -0500
Subject: Macbook Pro 9,2 (mid-2012) bcm4331 not working on Linux 3.4
In-Reply-To: <50017CF1.60807@logicblox.com>
References: <5000D140.4020500@logicblox.com> <5000D94F.7000405@lwfinger.net>
 <50017CF1.60807@logicblox.com>
Message-ID: <50018840.1070206@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/14/2012 09:06 AM, Shea Levy wrote:
>
> Ah, that did it, thanks. Is there a place where the kernel config requirements
> are documented?

If such documentation exists, I don't know about it. Most people either use the 
shotgun approach and enable everything the way distro does. If you build a lot 
of kernels, and do not want to waste time on things you will never use, then a 
minimum configuration is created, and then one looks carefully at the things 
that don't work. In this case, the key was knowing that recent Broadcom devices 
need bcma to work, while older ones need ssb.

The tough part is when a particular distro depends on an unusual combination of 
configuration parameters for their kernel to function. Linus Torvalds has just 
started a conversation on this issue. See the thread at
https://groups.google.com/forum/?fromgroups#!msg/fa.linux.kernel/EqysPjaJGDU/oDG2WXqokNoJ.

Larry
