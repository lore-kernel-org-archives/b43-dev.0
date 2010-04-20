From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 20 Apr 2010 12:07:40 -0500
Subject: System freezes with 2.6.33
In-Reply-To: <20100420162751.25907.qmail@stuge.se>
References: <20100418071932.GB15229@happy.exit>
	<4BCB3071.8030500@lwfinger.net>	<20100420143358.GA1990@happy.exit>	<20100420155140.14443.qmail@stuge.se>	<20100420180704.74972858@Mobile-Workstation.localdomain>
	<20100420162751.25907.qmail@stuge.se>
Message-ID: <4BCDDF5C.2040901@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/20/2010 11:27 AM, Peter Stuge wrote:
> Daniel Kuehn wrote:
>>>> I have also tried disabling the radio using the switch, and then
>>>> there is no freeze. When I enable the radio back, it freezes again.
>>>
>>> Could b43 experts please outline what happens w.r.t. the PCIe bus
>>> when radio is disabled using the switch as described above?
>>
>> Doesnt the switch "just" turn it off hardware wise?

No, the hardware is still powered. I think the signal from the switch
disables the radio, but I'm not sure of that.

> I doubt that. PCIe can do hotplug but it's only used in high-end
> systems, not a mini-note.
> 
> 
>> As in that the OS doesnt even know it exists then because more or
>> less the power is cut to it.
> 
> Usually the switch generates an electrical signal which goes through
> the system board over to the wifi card, and there it will have
> control over the RF part, and yes disable radio communication, but
> no, not the entire wifi card. As I have understood the b43 hardware
> can also read this electrical signal and report it's status to the
> driver, but it is impossible to override the hardwired "kill" switch
> from the driver.
> 
> This is why I ask for advice from the b43 experts, since maybe my
> description above is too simplistic, and the kill signal will
> actually cause more things to happen on the wifi card.
> 
> Anything related to the host bus is of particular interest.

See below.

> What happens in the firmware w.r.t. the kill switch?

I do not think the firmware knows anything about it other than possible
interaction with the driver through the contents of shared memory.

> What does openfwwf do?

Do you mean with respect to the freeze? The openfwwf is only for
Revision 5 802.11 cores - this one is Rev 13.

There are a number of code paths that are not used when the radio switch
is off. For instance, the device will not do DMA, which might be a clue.

Yuval: If you are willing to generate your own kernel, please set
'CONFIG_B43_FORCE_PIO=y' in your configuration. That will skip DMA
completely.

Larry
