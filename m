From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 25 Aug 2011 12:29:50 -0500
Subject: [RFC/RFT] b43: Relax requirement for descriptors to be in the
	DMA zone
In-Reply-To: <CACna6ryVB3yTj7rQbSdCqrw-9WtaPZedM7Ug6JV0iTDQQOv=Sw@mail.gmail.com>
References: <4e55750c.GPPIrbNLynUMWY/U%Larry.Finger@lwfinger.net>
	<CACna6ryVB3yTj7rQbSdCqrw-9WtaPZedM7Ug6JV0iTDQQOv=Sw@mail.gmail.com>
Message-ID: <4E56868E.7010404@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: John W Linville <linville@tuxdriver.com>, Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 08/25/2011 12:24 PM, Rafa? Mi?ecki wrote:
> 2011/8/25 Larry Finger<Larry.Finger@lwfinger.net>:
>> When 64-bit DMA was first used, there were problems with the
>> BCM4311 (14e4:4311). The problem was "fixed" by using the GFP_DMA
>> flag in the allocation of coherent ring descriptor memory.
>>
>> The original problem is now believed to have been due to bugs in
>> the 64-bit DMA implementation in the rest of the kernel, and that
>> those bugs have been fixed. Accordingly, the requirement for the
>> descriptors to be in the DMA zone is relaxed.
>
> Larry, it is not clear to me from the commit message: did you test
> that patch with your 14e4:4311?

Yes.

Larry
