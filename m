From: =?UTF-8?Q?Jo=C3=A3o_Paulo_Rechi_Vita?= <jprvita@endlessm.com>
Date: Wed, 7 Jun 2017 17:08:32 -0700
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
Message-ID: <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, Jun 6, 2017 at 6:41 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 06/06/2017 08:02 PM, Jo?o Paulo Rechi Vita wrote:
>>
>> Hello b43 developers,
>>
>> Is it possible to use b43-fwcutter to extract firmware from Windows
>> drivers? The manpage says "Currently b43-fwcutter supports Apple MacOS
>> X, Microsoft Windows and Linux drivers, but keep in mind that
>> b43-fwcutter doesn't support all driver versions.", but looking at
>> fwcutter_list.h I don't see entries for the windows drivers. Are
>> offsets for windows drivers available somewhere?
>
>
> The reason that you do not see any entries for Windows drivers is because
> those drivers are stripped such that we can get the offsets, but not the
> description for that particular firmware entry. One could go through each
> one and identify the correspondence with other firmware sources, but that
> would be very laborious and error prone. I have chosen not to try that
> approach.
>
> What do you hope to gain from Windows firmware? Extracting firmware from the
> Linux drivers should yield better firmware if the two operating systems have
> different requirements.
>

Thanks for your reply, Larry.

The idea is to help non-techy users on dual-boot installations, when
they have no other means to connect their Linux system to the
internet. On Endless we support a very specific Windows+Endless
dual-boot layout, so it is easy for us to find the Windows partition.
We want grab the Windows drivers and extract the firmware files from
them automatically when a compatible card is detected and the user is
offline.

I understand that there is some manual work involved on this, but are
there any pointers on how to get the offsets from the Windows drivers?
I could check if the extracted data matches anything we already know
from the wl firmware.

Also, you mention that firmware may be different due to different OS
requirements -- I expected the hw (thus, also the firmware) to behave
the same way despite which OS is running on the CPU. Maybe I'm being
naive here?

......................................................................................
Jo?o Paulo Rechi Vita  |  +1.415.851.5778  |  Endless
