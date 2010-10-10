From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 10 Oct 2010 19:35:32 +0200
Subject: Release of Maranello firmware source code for Broadcom cards
In-Reply-To: <E338C554-ADF5-490D-825D-E04D295664F0@ing.unibs.it>
References: <2518B44B-D014-4ABA-AE31-BD75691488AB@ing.unibs.it>
	<1DBB75B1-733F-4DFC-A541-2C2C986586A6@ing.unibs.it>
	<AANLkTika70YCWU8eG5QHO+Bdf5XakEOg_b+UJdgCG4A0@mail.gmail.com>
	<E338C554-ADF5-490D-825D-E04D295664F0@ing.unibs.it>
Message-ID: <AANLkTimUdX1duphd=QYRz_i-TERfXbjOM1QEXaTUO13M@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: francesco.gringoli@ing.unibs.it
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev@lists.infradead.org, Bo Han <bohan@cs.umd.edu>

W dniu 10 pa?dziernika 2010 18:53 u?ytkownik
<francesco.gringoli@ing.unibs.it> napisa?:
> On Oct 10, 2010, at 4:47 PM, Rafa? Mi?ecki wrote:
>
>> 2010/10/10 ?<francesco.gringoli@ing.unibs.it>:
>>> Hello there,
>>>
>>> we released the source code of the Maranello firmware and all the
>>> necessary kernel patches. It was tested on Broadcom 4318/4306 pci
>>> cards on PC architecture. Find all the necessary files browsing from
>>>
>>> http://www.ing.unibs.it/openfwwf
>>>
>>> or go directly here
>>>
>>> http://www.cs.umd.edu/projects/maranello
>>>
>>>
>>> Maranello is an enhancement of the 802.11 DCF standard: it implements
>>> a Partial Packet Recovery technique to retransmit only the corrupt
>>> parts of failed packets. This reduces the airtime and contributes to
>>> enhance the throughput. It was written starting from OpenFWWF5.2 by
>>> adding a number of new features.
>>>
>> Did you just add recovery feature to OpenFWWF 5.2 or did you improve
>> basic OpenFWWF as well?
>>
>> My 4318 with OpenFWWF 5.2 stops transmitting after few MB. Can
>> Maranello contain any fix for this? I'll able to test this later next
>> week.
>
> No, I don't think so. OpenFWWF5.2 does not handle correctly fifo overflow conditions. We have a testing firmware that handles them (and that works perfectly on WRT54GL): I hope we can release it soon.

Wow, that's great! If you need more testing, I'm willing to do some.
If you need full root access to machine with 4318 running
wireless-testing, just mail me privately.

Really hope you will manage to release that soon :)

-- 
Rafa?
