From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 14 Mar 2013 21:07:33 -0500
Subject: [RFC/RFT] b43: A fix for DMA transmission sequence errors
In-Reply-To: <2065763.l9B10YbWFg@wks001.ise.net>
References: <51421afb.xUa3KbaBuvmUk4RG%Larry.Finger@lwfinger.net>
 <2065763.l9B10YbWFg@wks001.ise.net>
Message-ID: <51428265.1090202@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: isedev@gmail.com
Cc: Michael Buesch <mb@bu3sch.de>, zajec5@gmail.com, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 03/14/2013 07:09 PM, ISE Development wrote:
> On Thursday 14 Mar 2013 13:46:19 Larry Finger wrote:
>> +                       if (unlikely(!skip))
>> +                               txstat = status;
>> +                       else
>> +                               txstat = &fake;
>
> The logic should probably be reversed. It's more unlikely to skip than not to
> do so (hopefully!)...

Yes, you are correct.

Larry
