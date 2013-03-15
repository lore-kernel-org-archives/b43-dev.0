From: ISE Development <isedev@gmail.com>
Date: Fri, 15 Mar 2013 01:09:19 +0100
Subject: [RFC/RFT] b43: A fix for DMA transmission sequence errors
In-Reply-To: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
References: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
Message-ID: <2065763.l9B10YbWFg@wks001.ise.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Thursday 14 Mar 2013 13:46:19 Larry Finger wrote:
> +                       if (unlikely(!skip))
> +                               txstat = status;
> +                       else
> +                               txstat = &fake;

The logic should probably be reversed. It's more unlikely to skip than not to 
do so (hopefully!)... 

-- 
-- isedev
