From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 07 May 2010 10:57:31 -0500
Subject: State of the SPROM-less driver
In-Reply-To: <4BE3C677.2060307@snafu.de>
References: <4BE3C677.2060307@snafu.de>
Message-ID: <4BE4386B.5010302@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/07/2010 02:51 AM, Oncaphillis wrote:
> Hallo,
> 
> Have the patches for the "SPROM-less" bcm43 devices made their way into
> wireless-2.6.git ? And if so -- how do I set it up with the ssb-vsprom
> program ?

No, those patches have not been incorporated as we are not convinced
that there are any devices without SPROM in the field. With the possible
exception of your system, all such boxes have been shown to have an
SPROM. It is just at a different location.

Could you please try the two attached patches? Does your system work
with them? They are meant to apply to the wireless-testing tree.

Larry
-------------- next part --------------
A non-text attachment was scrubbed...
Name: ssb_fast_pwrup_delay.patch
Type: text/x-patch
Size: 2585 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100507/a99b8c87/attachment.bin>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: ssb_alt_sprom_loc
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100507/a99b8c87/attachment.el>
