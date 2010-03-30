From: Pavel Roskin <proski@gnu.org>
Date: Tue, 30 Mar 2010 15:41:19 -0400
Subject: Broadcom card totally not visible for system (lspci)
In-Reply-To: <b170af451003301206p593cbe3ew582823c75dc06f11@mail.gmail.com>
References: <b170af451003300956r7fbd7812jdb40d125aeaf1b32@mail.gmail.com>
	<4BB2328D.9010503@lwfinger.net>
	<b170af451003301031yd06f559j85fd30417af32113@mail.gmail.com>
	<4BB23953.9010104@lwfinger.net> <1269975753.4938.8.camel@mj>
	<b170af451003301206p593cbe3ew582823c75dc06f11@mail.gmail.com>
Message-ID: <1269978079.4938.21.camel@mj>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Tue, 2010-03-30 at 21:06 +0200, Rafa? Mi?ecki wrote:

> You mean dmesg, don't you?

Yes.

>  I've attached it, but it was stopped by b43
> ML. You can see dmesg on marc archive for linux-wireless:
> http://marc.info/?l=linux-wireless&m=126996817625998&w=2
> 
> Unfortunately I don't have dmesg from some more-debugging kernel.

Indeed, there is no list of SSB devices.  The current kernels will
output that list even if CONFIG_SSB_DEBUG is disabled, but older kernels
required CONFIG_SSB_DEBUG for that.

Installing compat-wireless should help.  Also, ask the user to run
"modprobe b43".  It might just work.

-- 
Regards,
Pavel Roskin
