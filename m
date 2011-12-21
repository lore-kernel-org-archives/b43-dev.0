From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 21 Dec 2011 19:52:12 +0100
Subject: bcm4331 firmware installer package
In-Reply-To: <4EF21983.1020107@broadcom.com>
References: <CAG9cJm=YkvHY56LoBoUf3fuh=xb7m+c0GgUzMZX+QyG1+CBCMg@mail.gmail.com>
 <4EF21983.1020107@broadcom.com>
Message-ID: <CACna6rxEjQLj_j-f7WZOtOEGfDa+TPWyLDrn2t-FGZ5T2_fz-g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: lina <lina.lastname@gmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Debian Lists <debian-user@lists.debian.org>, =?UTF-8?B?Q2FtYWxlw7Nu?= <noelamac@gmail.com>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

2011/12/21 Arend van Spriel <arend@broadcom.com>:
> On 12/21/2011 11:59 AM, lina wrote:
>> Hi,
>>
>> I don't know which one (else) can be fit for bcm4331 802.11a/b/g/n (rev 02)
>>
>> From http://wiki.debian.org/bcm43xx#b43_and_b43legacy
>>
>> I tried:
>>
>> 1] aptitude install firmware-b43-lpphy-installer
>>
>> No chroot environment found. Starting normal installation
>> No supported card found.
>> Use proper b43 or b43legacy firmware.
>> Aborting.
>>
>> 2] # aptitude install firmware-b43-installer
>>
>> No chroot environment found. Starting normal installation
>> Unsupported device(s) found: PCI id 14e4:4331
>> Aborting.
>>
>> both of the listed are not working,
>>
>
> The bcm4331 support in b43 is pretty new so I do not expect distros are
> providing packages for it. Your best bet is to get linux-firmware repo
> from git.kernel.org. Probably the b43 developers can point you to the
> specific firmware file you need to use for that phy.

Arend: I'm not sure how to say it nice... but there is only one
company starting with "B" having copyrights to the BCM4331 firmware.
Only this company can legally submit BCM4331 firmware to
linux-firmware repo.

-- 
Rafa?
