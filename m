From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 15 Mar 2013 11:48:42 -0500
Subject: [RFC/RFT] b43: A fix for DMA transmission sequence errors
In-Reply-To: <CACna6rxAGN5cx6BXrdpM+-q_6QAQAvfb8+qhe-romE4hdxSs3g@mail.gmail.com>
References: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
 <CACna6rzvqo-CdrwkSH0p9=b=Qn+L78jQQSuGcGbgT865_uKvSw@mail.gmail.com>
 <CACna6rxAGN5cx6BXrdpM+-q_6QAQAvfb8+qhe-romE4hdxSs3g@mail.gmail.com>
Message-ID: <514350EA.2060205@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Michael Buesch <mb@bu3sch.de>, isedev@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 03/15/2013 01:37 AM, Rafa? Mi?ecki wrote:
>
> OK, so after early tests, this card doesn't support full-addressing at all.
>
> I'll give this patch a try during the weekend.

Please follow Michael's suggestion, and change

		if (slot == firstused + 2) {

into

		if (slot == next_slot(ring, next_slot(ring, firstused))) {

This change is needed just in case "firstused + 2" wraps around.

Thanks,

Larry
