From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 24 May 2010 11:30:15 -0500
Subject: PCIe setup routines
In-Reply-To: <AANLkTilILf0T6hFs9EOwdOGyTTd5RJEMvE4rjz3uP3Yh@mail.gmail.com>
References: <4BBB6721.3030201@lwfinger.net>
	<AANLkTilILf0T6hFs9EOwdOGyTTd5RJEMvE4rjz3uP3Yh@mail.gmail.com>
Message-ID: <4BFAA997.4050107@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/24/2010 11:23 AM, Rafa? Mi?ecki wrote:
> 2010/4/6 Larry Finger <Larry.Finger@lwfinger.net>:
>> There are routines in
>> http://bcm-v4.sipsolutions.net/PCI-E#PCIe_Attach_.28int_state.29 that I
>> don't think have been implemented.
>>
>> I still have a question about getting an MMIO address from sprom[x].
>> That is how the 0x280A address is picked in the code I sent earlier;
>> however, I don't see any of the other addresses in those routines being
>> used on my card. I still need to find where that array is filled in
>> Broadcom's code.
> 
> Could someone point me to part of core related to PCI(e) operations?

Most of the stuff is in drivers/ssb/driver_pcicore.c. If not there,
check in drivers/ssb/pci.c; however, most of that is SPROM related.

Larry
