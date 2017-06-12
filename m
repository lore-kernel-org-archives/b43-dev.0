From: =?UTF-8?Q?Jo=C3=A3o_Paulo_Rechi_Vita?= <jprvita@endlessm.com>
Date: Mon, 12 Jun 2017 12:28:09 -0400
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
 <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
 <CAOcMMidd-qr8DZYyQCwHrejpVym64-nR9-_10nepm61GOT7Eow@mail.gmail.com>
 <bcf64bd7-ebf8-1876-3487-453c941ec7bc@lwfinger.net>
Message-ID: <CAOcMMic01a3On+va+x5_FcC_9Gz8xKhdjU1gbjQ0qYwN1CdSmQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Jun 8, 2017 at 12:48 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 06/07/2017 07:08 PM, Jo?o Paulo Rechi Vita
> A potential solution to your problem might be to use The method employed in
> http://www.lwfinger.com/b43-firmware/no_net_install_bcm43xx_firmware.tar.bz2.
> That tar file contains Broadcom object files with firmware for b43 and
> b43legacy with a script that extracts the firmware files. It meets Broadcom
> restrictions in that it only redistributes drivers, not firmware files. That
> particular tar file contains 5.100.138 b43 firmware; however, it would be
> easy to package a different driver, and adjust the extraction script
> accordingly. If it is not possible to package the tar file as part of your
> Windows installation, at least you could have your users download that file
> from a Windows boot, and then run the firmware extraction from a Linux boot.
>
> The only thing I ask is that you host the download on your server. I do not
> promise to host those files in perpetuity. I wrote part of the script file,
> and you have my permission to use it as you please as long as you preserve
> my copyright. The rest of the script is part of the openSUSE package.
>

We already ship a similar script based on the debian package for
b43-fwcutter (with some adaptations for our rootfs layout), that would
download the drivers, extract and install firmware for the user, so we
could just ship the files as well. What I was trying to avoid is
shipping those files, and that's where extracting from the Windows
drivers would come in handy.

Thanks,

......................................................................................
Jo?o Paulo Rechi Vita  |  +1.415.851.5778  |  Endless
