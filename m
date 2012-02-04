From: Arend van Spriel <arend@broadcom.com>
Date: Sat, 4 Feb 2012 11:44:23 +0100
Subject: BCM4331 fails to associate after suspend
In-Reply-To: <20120203222818.GA3749@ubuntu-mba>
References: <20120203222818.GA3749@ubuntu-mba>
Message-ID: <4F2D0C07.1010704@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>, Scott Sanbar <scott.sanbar@gmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

On 02/03/2012 11:28 PM, Seth Forshee wrote:
> 
> I've been looking around a bit in the b43 and bcma drivers, but so far I
> haven't found the reason why this happens. Any help would be
> appreciated. Let me know if there's additional information I can
> provide.
> 

With which kernel version do you see these issues? BCMA suspend/resume
code has a fix in 3.3-rc1. So if you are seeing it on a 3.2 kernel,
please give it a try.

Gr. AvS
