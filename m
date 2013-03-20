From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 20 Mar 2013 09:53:28 -0500
Subject: [RFC/RFT] b43: A fix for DMA transmission sequence errors
In-Reply-To: <4518745.W5blfs9sIi@wks001.ise.net>
References: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
 <CACna6rxAGN5cx6BXrdpM+-q_6QAQAvfb8+qhe-romE4hdxSs3g@mail.gmail.com>
 <514350EA.2060205@lwfinger.net> <4518745.W5blfs9sIi@wks001.ise.net>
Message-ID: <5149CD68.7070603@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: isedev@gmail.com
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 03/20/2013 06:26 AM, ISE Development wrote:
>
> Did you get a chance to validate this patch?
>
> So far on my system, it has been running for over week without problems (over
> 15GB of traffic).

I have been using the patch, but I am testing rtlwifi drivers quite heavily at 
the moment, thus b43 has had limited usage. In fact, I was waiting to get a 
report from you before pushing the patch. It is ready to go.

How frequently do you get the automatic reset?

Larry
