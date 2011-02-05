From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 04 Feb 2011 21:22:16 -0600
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>	<4D4C5595.7060903@lwfinger.net>
	<AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
Message-ID: <4D4CC268.2080008@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/04/2011 02:27 PM, Rafa? Mi?ecki wrote:
> W dniu 4 lutego 2011 20:37 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net> napisa?:
>> On 02/04/2011 12:56 PM, Rafa? Mi?ecki wrote:
>>> I'd like to propose little (nothing big) reogranisation of b43 hardware table:
>>> http://wireless.kernel.org/Zajec?action=recall&rev=4
>>>
>>> Changed columns support/supported and driver/alternatives.
>>>
>>> Are you fine with that? Can we use colored one?
>>
>> I like the colored one.
>>
>> Some small changes:
>>
>> I would eliminate the second 14e4:4312 line and move the wl entry to the first
>> one. I don't know if wl supports 5 GHz on that chip. I don't have mine any longer.
> 
> Do you know anything about that duplicated ID? Is that true at all?
> Why we don't support device with that duplicated ID? Why do you want
> to remove it?

I'm not sure that there really is an 802.11b/g device with ID 14e4:4312. There
are two flavors of BCM4312, one that is 802.11a/b/g (14e4:4312), and an
802.11b/g device with ID 14e4:4315, which is the LP PHY. I suspect that the
confusion over the two BCM4312 items led to the duplicate entry in this table.

Larry
.
