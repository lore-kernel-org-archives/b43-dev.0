From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 15 Oct 2010 11:55:42 +0200
Subject: brcm80211 in b43
In-Reply-To: <4CB80B57.5090904@anymore.nl>
References: <840064.48426.qm@web111406.mail.gq1.yahoo.com>
	<AANLkTikX2BXn8mhSUJ9aMSVTWpWxWGfmxEWm7gdcoKTu@mail.gmail.com>
	<4CB80B57.5090904@anymore.nl>
Message-ID: <AANLkTikPTP6Bv0N2SS_kTNvnGbJZbKWJQ4QfeTBesqAN@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/10/15 Arjan Schrijver <arjan@anymore.nl>:
> ?On 10/14/10 22:27, G?bor Stefanik wrote:
>>
>> On Thu, Oct 14, 2010 at 9:51 PM, Ariel Pedraza<pedrazaa@yahoo.com> ?wrote:
>>>
>>> In the future the b43 driver will support the same devices that the
>>> brcm80211 driver does? just one universal driver pure FOSS...
>>
>> No.
>>
>> B43 only supports SSB-based devices; while brcm80211 is for SSB-less
>> ones. (Brcmfmac is yet another driver - for fullmac Broadcoms with the
>> exception of BCM4320, which is handled by rndis_wlan.)
>>
>
> Which driver would I need for the device below?
> 0c:00.0 Network controller: Broadcom Corporation BCM4322 802.11a/b/g/n
> Wireless LAN Controller (rev 01)
>
> Is this a SSB-based device, or a SSB-less device?

It's SSB-based. You will want b43 when it gets stable N-PHY support or
brcm80211 when it gets SSB devices support.

-- 
Rafa?
