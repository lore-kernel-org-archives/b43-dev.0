From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 17 Nov 2010 17:23:10 -0600
Subject: BCM4318KFBG not recognized by b43
In-Reply-To: <AANLkTimAk2Mf7PvhyOZ3PGEg15hgznbySADn6OpbGS4F@mail.gmail.com>
References: <AANLkTinoQH52c33L2UMo3=03Oq2qGqNDcnQ3iiffZ334@mail.gmail.com>	<4CC1F137.9050409@lwfinger.net>	<AANLkTikYJ0Yd1_8AjZ2T-6jSGCi5WqYy2yRdpt1Vfz1d@mail.gmail.com>	<201011172348.43346.danielklaffenbach@gmail.com>
	<AANLkTimAk2Mf7PvhyOZ3PGEg15hgznbySADn6OpbGS4F@mail.gmail.com>
Message-ID: <4CE463DE.60609@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/17/2010 05:10 PM, Rafa? Mi?ecki wrote:
> W dniu 17 listopada 2010 23:48 u?ytkownik Daniel Klaffenbach
> <danielklaffenbach@gmail.com> napisa?:
>> On Wednesday 17 November 2010 22:39:31 Rafa? Mi?ecki wrote:
>>> Daniel: anything new on this? Could you put that card in some "normal"
>>> machine where it's relatively easy to install deubgging symbols?
>> I'm afraid no. My wireless router is the only machine in my environment with a
>> mini-PCI slot.
>>
>> I could however compile the kernel for my OpenWRT box with debugging symbols
>> (KERNEL_DEBUG_INFO in OpenWRT config), if this helps.
> 
> Would be nice. I was afraid compiling kernel for OpenWRT won't be easy/fast.
> 
> 
>> Could the PCI vendor id alone be the reason for this problem? As I mentioned
>> earlier I've added the ID to b43_pci_bridge.c, but I am not sure whether this
>> is sufficient or not.
> 
> Really, hard to say. dmesg with debugging symbold would at least give
> some info what's going on.

As the driver never loaded until you changed the vendor id, one could say that
your change "caused" the problem, but the data error you saw is likely due to an
attempt to read or write an address that is not properly mapped. There are too
many possibilities to speculate.

Larry
