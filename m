From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 01 Dec 2010 17:08:22 -0600
Subject: RFC - removal of SPROM fallback
In-Reply-To: <4CF6CA2F.5050704@openwrt.org>
References: <4CF69ED1.1070406@lwfinger.net>	
	(sfid-20101201_201546_954964_FFFFFFFFC298F049)
	<1291240619.1960.3.camel@maggie> <4CF6CA2F.5050704@openwrt.org>
Message-ID: <4CF6D566.4050301@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Florian Fainelli <florian@openwrt.org>
Cc: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, =?UTF-8?B?R8OhYm9yIA==?= =?UTF-8?B?U3RlZmFuaWs=?= <netrolller.3d@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On 12/01/2010 04:20 PM, Florian Fainelli wrote:
> Hello,
> 
> Le 01/12/2010 22:56, Michael B?sch a ?crit :
>> On Wed, 2010-12-01 at 13:15 -0600, Larry Finger wrote:
>>> At one time, we thought that we had found BCM43xx devices with no
>>> SPROM. In the
>>> one case that I remember, it was because the SPROM had been relocated.
>>>
>>> I now have the data from John's device that needs the revision fixup
>>> and I know
>>> what is wrong - it is rev 2 with corrupted CRC. The defaulting to rev
>>> 1 is
>>> getting almost everything wrong, including MAC address and vendor. My
>>> plan is to
>>> write a better fixup routine.
>>>
>>> At the moment, we have some SPROM fallback code that has not been fully
>>> implemented, and is probably not needed. Are there any objections to
>>> stripping
>>> this code out of drivers/ssb/pci.c and drivers/ssb/sprom.c?
>>
>> Yes. The code is needed for bcm63xx embedded devices. The code that uses
>> it currently is not in mainline, though. It can be found in the OpenWRT
>> repositories.
> 
> It actually is mainline and used.
> 
>>
>> But I still think that the SPROM fallback mechanism should be replaced
>> by a "platform data" based mechanism, or similar. Just removing it
>> without replacement is not an option, because bcm63xx embedded really
>> does not have an SPROM.
> 
> Correct. The rationale behind this is that if you have a big flash for
> your system, you do not want to afford the cost for another flash chip
> storing the SPROM. Whichever mechanism works for your, I will do the
> required changes in the bcm63xx architecture code.

There is no need for that. I'll start my changes after the check for a fallback
SPROM returns NULL. My only reason for removing anything is that I thought it
was not used.

Larry
