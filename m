From: Vince Radice <vhradice@cfl.rr.com>
Date: Thu, 09 Feb 2012 15:55:58 -0500
Subject: Wireless Problem
In-Reply-To: <4F34209E.5090704@broadcom.com>
References: <4F3417B6.4060005@cfl.rr.com>
 <CACna6rxanokAjM4Jy-7C9SFk89Bepn6p3+GM0kduLxaP0y37GQ@mail.gmail.com>
 <4F34209E.5090704@broadcom.com>
Message-ID: <4F3432DE.9050105@cfl.rr.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Thank you for the quick response.  Some of the posts that I looked at 
indicated success with what was available, but they never came back with 
the proper list of what worked.

     As for my question about b43-fwcutter, do I do something with this 
or is it done behind the scenes by a driver?

     Also, some have had success with the STA drivers.  I believe that I 
have installed them with yum.  How can I tell if they are being used?  
Can I somehow tie those drivers with my usb adapter?

Again, thanks,

Vince Radice

On 02/09/2012 02:38 PM, Arend van Spriel wrote:
> On 02/09/2012 08:17 PM, Rafa? Mi?ecki wrote:
>> 2012/2/9 Vince Radice<vhradice@cfl.rr.com>:
>>>     I am having a problem trying to get a Netgear WNA3100 adapter working.  I
>>> have probably been through 100+ posts and threads trying to figure out what
>>> is happening.  I have attached two files.  One contains the output from
>>> dmesg.  The other has the output from several commands as requested in the
>>> doc.
>> This is BCM43231, fullmac device, nothing to-be-covered by b43 driver.
>> The driver that may support this chipset is brcmfmac, but for now only
>> support for BCM4329, BCM4330 and BCM43236 was recently-added. I think
>> I remember Arend saying they are not working on support for BCM43231
>> for now. I may be wrong however.
> You are correct.
>
>> We could try hacking support for this chipset by just extracting
>> firmware for BCM43231 and adding proper USB ID in brcmfmac. I don't
>> think anyone is working on this.
>>
> I believe the API between driver and firmware is different so expect
> problems doing that. I can inform just how different.
>
> Gr. AvS
>
>
