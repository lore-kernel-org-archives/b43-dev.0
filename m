From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Apr 2011 10:36:33 -0500
Subject: Dumping PCI read/writes
In-Reply-To: <BANLkTi=xaV0qOCu5rO=xn=R5V1HNDKd4+Q@mail.gmail.com>
References: <BANLkTinAb4v+bGiFgLqFcdx_YpyiEVcgwQ@mail.gmail.com>	<4DB5BEEB.7060507@lwfinger.net>	<BANLkTim1_xQAE+-VHanQVaav4sHqhHOj_g@mail.gmail.com>
	<BANLkTi=xaV0qOCu5rO=xn=R5V1HNDKd4+Q@mail.gmail.com>
Message-ID: <4DB6E681.3070204@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/26/2011 04:23 AM, Rafa? Mi?ecki wrote:
> W dniu 25 kwietnia 2011 20:38 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com>  napisa?:
>> W dniu 25 kwietnia 2011 20:35 u?ytkownik Larry Finger
>> <Larry.Finger@lwfinger.net>  napisa?:
>>> On 04/25/2011 01:13 PM, Rafa? Mi?ecki wrote:
>>>>
>>>> I've made b43 and wl dumps almost identical on Juan's HP machine. I
>>>> still get DMA errors.
>>>>
>>>> Does anyone still have patch to enable dumping PCI operations?
>>>
>>> The attached patch will log the reads and writes to the PCI config
>>> registers. Is it the one you wanted?
>>
>> Thanks.
>
> If we assume that:
> 1) Problem with b43 and DMA is pci config related
> 2) Config writes done by wl can be noted by reading
>
> Does it make sense to dump PCI config with "lspci -x" or "-xxx" for
> cold boot vs. loaded&unloaded wl?

I don't know if it will show anything, but it is an easy test.

Larry
