From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 17 Nov 2011 09:42:04 +0100
Subject: Patch "b43: refuse to load unsupported firmware" has been added
 to the 3.0-stable tree
In-Reply-To: <1321512890.2885.92.camel@deadeye>
References: <1321487254296@kroah.org>
	<1321512890.2885.92.camel@deadeye>
Message-ID: <CACna6ryQe3p3WUeHo5F6HUoO-BH6hC+=YhDgH=sMey6dwperng@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/11/17 Ben Hutchings <ben@decadent.org.uk>:
> On Wed, 2011-11-16 at 15:47 -0800, gregkh at suse.de wrote:
> [...]
>> From: Rafa Miecki <zajec5@gmail.com>
>> Date: Tue, ?8 Nov 2011 17:15:03 +0100
>> Subject: b43: refuse to load unsupported firmware
>> To: stable at kernel.org, <Greg KH> greg at kroah.com
>> Cc: linux-wireless at vger.kernel.org, b43-dev at lists.infradead.org, roman-vl at meta.ua, Rafa Miecki <zajec5@gmail.com>
>> Message-ID: <1320768903-8731-1-git-send-email-zajec5@gmail.com>
>>
>> [This patch is supposed to be applied in 3.1 (and maybe older) branches only.]
>>
>> New kernels support newer firmware that users may try to incorrectly use
>> with older kernels. Display error and explain the problem in such a case
> [...]
>> + ? ? } else if (fwrev >= 598) {
>> + ? ? ? ? ? ? b43err(dev->wl, "YOUR FIRMWARE IS TOO NEW. Support for "
>> + ? ? ? ? ? ? ? ? ? ?"firmware 598 and up requires kernel 3.2 or newer. You "
>> + ? ? ? ? ? ? ? ? ? ?"have to install older firmware or upgrade kernel.\n");
>> + ? ? ? ? ? ? b43_print_fw_helptext(dev->wl, 1);
>> + ? ? ? ? ? ? err = -EOPNOTSUPP;
>> + ? ? ? ? ? ? goto error;
> [...]
>
> This is the wrong way to go about things. ?If the new firmware is
> incompatible, change the filename (like everyone else does). ?It should
> be possible to install the different firmware versions in parallel, just
> as it possible to install the different kernel versions in parallel.

It sounds sane. Unfortunately I see few problems right now, not sure
how to solve this now...

1) Broadcom driver doesn't contain info about firmware version
2) Because of that b43-fwcutter can't name files correctly
3) Discovering firmware version requires loading it to the firmware
and reading from SHM
4) Broadcom seems to be using internally API versioning. I'm afraid
it's not included in drivers as well
5) The only way for b43-fwcutter seems to be hardcoding firmware
version linked with specific Broadcom driver
6) We already support same-name-called-firmware-files with 2 different
APIs (598 isn't the first split here)

I'm afraid we won't be able to fix that for 3.0/3.1/3.2 releases. I
think we can consider cleaning this in future releases, still not sure
how however.

-- 
Rafa?
