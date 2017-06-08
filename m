From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 7 Jun 2017 23:48:00 -0500
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
Message-ID: <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/07/2017 07:08 PM, Jo?o Paulo Rechi Vita wrote:
> On Tue, Jun 6, 2017 at 6:41 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> On 06/06/2017 08:02 PM, Jo?o Paulo Rechi Vita wrote:
>>>
>>> Hello b43 developers,
>>>
>>> Is it possible to use b43-fwcutter to extract firmware from Windows
>>> drivers? The manpage says "Currently b43-fwcutter supports Apple MacOS
>>> X, Microsoft Windows and Linux drivers, but keep in mind that
>>> b43-fwcutter doesn't support all driver versions.", but looking at
>>> fwcutter_list.h I don't see entries for the windows drivers. Are
>>> offsets for windows drivers available somewhere?
>>
>>
>> The reason that you do not see any entries for Windows drivers is because
>> those drivers are stripped such that we can get the offsets, but not the
>> description for that particular firmware entry. One could go through each
>> one and identify the correspondence with other firmware sources, but that
>> would be very laborious and error prone. I have chosen not to try that
>> approach.
>>
>> What do you hope to gain from Windows firmware? Extracting firmware from the
>> Linux drivers should yield better firmware if the two operating systems have
>> different requirements.
>>
> 
> Thanks for your reply, Larry.
> 
> The idea is to help non-techy users on dual-boot installations, when
> they have no other means to connect their Linux system to the
> internet. On Endless we support a very specific Windows+Endless
> dual-boot layout, so it is easy for us to find the Windows partition.
> We want grab the Windows drivers and extract the firmware files from
> them automatically when a compatible card is detected and the user is
> offline.
> 
> I understand that there is some manual work involved on this, but are
> there any pointers on how to get the offsets from the Windows drivers?
> I could check if the extracted data matches anything we already know
> from the wl firmware.
> 
> Also, you mention that firmware may be different due to different OS
> requirements -- I expected the hw (thus, also the firmware) to behave
> the same way despite which OS is running on the CPU. Maybe I'm being
> naive here?

In general, the firmware should be the same, but as I have not seen any 
specifics on Windows drivers, there could be differences. The reverse 
engineering started with MIPS drivers for Linux. We never looked at any RE for 
Windows drivers.

A potential solution to your problem might be to use The method employed in 
http://www.lwfinger.com/b43-firmware/no_net_install_bcm43xx_firmware.tar.bz2. 
That tar file contains Broadcom object files with firmware for b43 and b43legacy 
with a script that extracts the firmware files. It meets Broadcom restrictions 
in that it only redistributes drivers, not firmware files. That particular tar 
file contains 5.100.138 b43 firmware; however, it would be easy to package a 
different driver, and adjust the extraction script accordingly. If it is not 
possible to package the tar file as part of your Windows installation, at least 
you could have your users download that file from a Windows boot, and then run 
the firmware extraction from a Linux boot.

The only thing I ask is that you host the download on your server. I do not 
promise to host those files in perpetuity. I wrote part of the script file, and 
you have my permission to use it as you please as long as you preserve my 
copyright. The rest of the script is part of the openSUSE package.

Larry
