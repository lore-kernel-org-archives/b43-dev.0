From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 28 Mar 2012 11:02:04 -0500
Subject: b43: system hangs during kernel initialisation [14e4:4318]
In-Reply-To: <4F72AE46.1050805@thewatertower.org>
References: <4F72181C.3030903@thewatertower.org>
 <4F723155.1080104@lwfinger.net> <4F72AE46.1050805@thewatertower.org>
Message-ID: <4F7335FC.5090501@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/28/2012 01:23 AM, Ben Prescott wrote:
> On 27/03/12 22:29, Larry Finger wrote:
>> What form factor is your BCM4318? I downloaded the 32-bit 12.04 iso and was
>> able to boot it on my sandbox, which has both a BCM4306 (b43) and a BCM4301
>> (b43legacy) in PCI form. No problems other than the kernel log showing no
>> firmware available and I had no network. Clearly, not a hang during booting.
>>
> The machine is a laptop; the wifi is a mini-PCI.

That should be close enough to my system, thus I cannot duplicate your problem. 
I have no idea what the difficulty might be. There should not be a major 
difference between my BCM4306 and your BCM4318 at this level.

I do not see any way to get the firmware onto the live system during booting.

If you copy any existing firmware files in /lib/firmware/b43/ on your working 
system, either from a USB stick, or from mounting a hard drive partition, could 
you then load b43? If not, perhaps we can get some better diagnostics from a 
running kernel.

Larry
