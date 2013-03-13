From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 13 Mar 2013 14:14:25 -0500
Subject: [PATCH] ssb: pci: Fix flipping of MAC address
In-Reply-To: <20130313181817.GB19917@tuxdriver.com>
References: <513e40c2.MDaC+Q82iTl9PpIZ%Larry.Finger@lwfinger.net>
 <20130313181817.GB19917@tuxdriver.com>
Message-ID: <5140D011.8060701@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, zajec5@gmail.com

On 03/13/2013 01:18 PM, John W. Linville wrote:
> On Mon, Mar 11, 2013 at 03:38:26PM -0500, Larry Finger wrote:
>> Since commit e565275 entitled "ssb: pci: Standardize a function to get mac
>> address", the SPROM readout of the MAC has had the values flipped so that
>> 00:11:22:33:44:55 became 11:00:33:22:55:44. The fix has been tested on both
>> little- and big-endian architectures.
>>
>> Reported-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
>> ---
>>
>> John,
>>
>> This bug was introduced in 3.9, and should be fixed there.
>>
>> Thanks,
>>
>> Larry
>> ---
>>
>> Index: wireless-testing-new/drivers/ssb/pci.c
>> ===================================================================
>> --- wireless-testing-new.orig/drivers/ssb/pci.c
>> +++ wireless-testing-new/drivers/ssb/pci.c
>> @@ -234,8 +234,8 @@ static void sprom_get_mac(char *mac, con
>>   {
>>   	int i;
>>   	for (i = 0; i < 3; i++) {
>> -		*mac++ = in[i];
>>   		*mac++ = in[i] >> 8;
>> +		*mac++ = in[i];
>>   	}
>>   }
>
> Actually, FWIW it seems to have been introduced in commit
> e5652756ff36ed9e1283121f788e6a17117efcab, which is slated for 3.10.
> I'm happy to merge it in wireless-next.

After further checking, I agree that it is not in 3.9. As long as the fix is 
merged before 3.10, all will be OK.

Sorry for the confusion.

Larry
