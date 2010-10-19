From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 19 Oct 2010 13:21:21 -0500
Subject: [PATCH] ssb: Clear RETRY_TIMEOUT in PCI Configuration
In-Reply-To: <20101019180224.GB2441@tuxdriver.com>
References: <4cbddbab.aeEgjpVFDD9GDTuy%Larry.Finger@lwfinger.net>
	<20101019180224.GB2441@tuxdriver.com>
Message-ID: <4CBDE1A1.2070000@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/19/2010 01:02 PM, John W. Linville wrote:
> On Tue, Oct 19, 2010 at 12:55:55PM -0500, Larry Finger wrote:
>> MMIO log traces obtained using the Broadcom wl hybrid driver show that
>> the RETRY_TIMEOUT register (0x41) in PCI configuration space is cleared
>> if non-zero. Similar code found in other drivers such as ipw2100 show
>> this operation is needed to keep PCI Tx retries from interfering with
>> C3 CPU state. There are no known cases where omission of this code has
>> caused a problem, but this patch is offered just in case such a situation
>> occurs.
>>
>> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
>> ---
>>
>> John,
>>
>> No particular urgency for this patch.
>>
>> Larry
> 
> I nearly missed it!  Please do Cc linux-wireless at vger.kernel.org on patches.

Sorry. I guess I'm out of practice.

Larry
