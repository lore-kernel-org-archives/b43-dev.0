From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 14 Mar 2013 19:55:49 +0100
Subject: [RFC/RFT] b43: A fix for DMA transmission sequence errors
In-Reply-To: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
References: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
Message-ID: <20130314195549.56fea051@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, zajec5@gmail.com, isedev@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 14 Mar 2013 13:46:19 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

>  	if (unlikely(slot != firstused)) {
>  		/* This possibly is a firmware bug and will result in
> -		 * malfunction, memory leaks and/or stall of DMA functionality. */
> +		 * malfunction, memory leaks and/or stall of DMA functionality.
> +		 */
>  		b43dbg(dev->wl, "Out of order TX status report on DMA ring %d. "
>  		       "Expected %d, but got %d\n",
>  		       ring->index, firstused, slot);
> -		return;
> +		if (slot == firstused + 2) {

I guess you need to handle wrap-over here.
This would probably do:
		if (slot == next_slot(ring, next_slot(ring, firstused)))

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130314/bbcb41a3/attachment.sig>
