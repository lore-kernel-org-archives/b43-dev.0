From: Zlatko Calusic <zcalusic@bitsync.net>
Date: Sun, 4 Oct 2015 22:46:01 +0200
Subject: Trouble loading firmware (error -2)
In-Reply-To: <CAP-bSRadqeM0iL_j_XETfyoAScnmdLo=SmvLD4cYzzBYPZsNeg@mail.gmail.com>
References: <560EBD8A.4090400@bitsync.net>
 <CAP-bSRadqeM0iL_j_XETfyoAScnmdLo=SmvLD4cYzzBYPZsNeg@mail.gmail.com>
Message-ID: <56119009.80508@bitsync.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03.10.2015 13:43, Chris Bainbridge wrote:
> On 2 October 2015 at 18:23, Zlatko Calusic <zcalusic@bitsync.net> wrote:
>> Hello,
>>
>> please help with this issue, the error message is cryptic I don't know what
>> error -2 means:
>>
>> b43 bcma0:1: Direct firmware load for b43/ucode30_mimo.fw failed with error
>> -2
>> b43 bcma0:1: Direct firmware load for b43/ucode30_mimo.fw failed with error
>> -2
>> b43 bcma0:1: Direct firmware load for b43-open/ucode30_mimo.fw failed with
>> error -2
>> b43 bcma0:1: Direct firmware load for b43-open/ucode30_mimo.fw failed with
>> error -2
>> b43-phy0 ERROR: Firmware file "b43/ucode30_mimo.fw" not found
>> b43-phy0 ERROR: Firmware file "b43-open/ucode30_mimo.fw" not found
>> b43-phy0 ERROR: You must go to
>> http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download
>> the correct firmware for this driver version. Please carefully read all
>> instructions on this website.
>>
>> Yet, ls -al /lib/firmware/b43/ucode30_mimo.fw:
>>
>> -rw-r--r-- 1 root root 39632 Apr  6 18:09 /lib/firmware/b43/ucode30_mimo.fw
>>
>> it's there, as put by b43-fwcutter package (Debian 1:019-2). Though I don't
>> have b43-open directory, tried symlinking it, didn't help.
>>
>> The kernel is virgin 4.2.0 Linus, custom compiled, relevant config entries
>> below, am I missing something?
>>
>> CONFIG_B43=y
>
> Are you using an initrd? The b43 driver tries to load the firmware
> when it is initialised. If b43 is builtin (not a module) then the load
> will happen at boot time - when the initrd is mounted, but before the
> real root - and the firmware won't be found. The solution is to either
> copy the firmware to the initrd, or build b43 as a module and make
> sure the module isn't on the initrd.
>
>> CONFIG_FIRMWARE_IN_KERNEL=y
>
> Trying to include the firmware blobs in to the kernel binary is
> unlikely to work for b43, because b43/main.c only defines 7 firmware
> files in MODULE_FIRMWARE(). There are ~117 firmware files in
> /lib/firmware/b43 and your wifi card requires some subset of those,
> probably not the 7 that are defined.
>

Thank you very much Chris for this great reply. I would've spent lots of 
time trying to figure this out alone.

First I set CONFIG_FIRMWARE_IN_KERNEL=n as it obviously doesn't help my 
case. Still it didn't work because initramfs is not pulling the needed 
firmware. This I solved with a simple /etc/initramfs-tools/hooks/b43 hook:

#! /bin/sh -e
mkdir -p "${DESTDIR}/lib/firmware"
cp -a /lib/firmware/b43 "${DESTDIR}/lib/firmware"

And now all is well, firmware gets loaded, wifi works.

Best regards,

-- 
Zlatko
