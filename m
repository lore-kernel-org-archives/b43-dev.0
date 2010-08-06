From: William Bourque <william.bourque@polymtl.ca>
Date: Fri, 06 Aug 2010 14:43:34 -0400
Subject: Interesting development regarding b43 DMA ERROR
In-Reply-To: <4C5C4860.2030507@lwfinger.net>
References: <4C5B27BE.8010708@lwfinger.net>	<AANLkTi=-Jc9XjD-gqwtUyUnM768wvv3GzzwhJNtkwYKK@mail.gmail.com>
	<4C5C4860.2030507@lwfinger.net>
Message-ID: <4C5C57D6.4090405@polymtl.ca>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


I can try to build on mine...
I'm just not sure which kernel you want me to use... are you talking 
about wireless-testing or the regular kernel.org devtree? The "+ 
updates" part confuse me as well.

Sorry if it's a dumb question :)

- William


On 06/08/10 01:37 PM, Larry Finger wrote:
> On 08/06/2010 11:31 AM, Rafa? Mi?ecki wrote:
>>
>> Interesting. It means some patch that gone mainline fixed it and it
>> was submitted using other tree than w-t, right?
>>
>> Would you care to bisect this?
>
> It won't be fun as this is a 1.6 GHz Atom and a kernel build is quite slow. In
> addition, this one has the relocated SPROM that requires patching to be able to
> boot. In the interests of the community, I will do it.
>
> Larry
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
