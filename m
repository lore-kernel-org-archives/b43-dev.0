From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 03 Nov 2010 16:52:29 -0500
Subject: [PATCH] ssb: workarounds: be verbose about hacking SPROM revision,
	don't duplicate code
In-Reply-To: <1288820625.7368.117.camel@maggie>
References: <1288818386-25073-1-git-send-email-zajec5@gmail.com>	
	(sfid-20101103_220727_407923_69716152)
	<1288820625.7368.117.camel@maggie>
Message-ID: <4CD1D99D.5070501@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 11/03/2010 04:43 PM, Michael B?sch wrote:
> On Wed, 2010-11-03 at 22:06 +0100, Rafa? Mi?ecki wrote: 
>> +	default:
>> +		ssb_printk(KERN_WARNING PFX "Unsupported SPROM"
>> +			   "  revision %d detected. Will extract"
>> +			   " v1\n", out->revision);
>> +		out->revision = 1;
>> +		sprom_extract_r123(out, in);
> 
> I think we should change this to throw a hard error if the sprom is
> unknown. Extracting r123 is unlikely to do any good these days.
> This workaround was only useful back in the days where 95% of the
> cards out there were r123. But today that's not the case.
> 
>> 	}
>>  
>>  	if (out->boardflags_lo == 0xFFFF)

In any case, the out->revision = 1 statement should be before the ssb_printk() call.

I agree - throw a hard error.

Larry
