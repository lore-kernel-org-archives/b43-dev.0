From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 6 Jun 2017 20:41:19 -0500
Subject: Using b43-fwcutter on Windows drivers
In-Reply-To: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
References: <CAOcMMidabs11reb+t8rcop5z8AsiU13xcsT7-VYJXGO0RdUyWw@mail.gmail.com>
Message-ID: <fca17d4a-21b8-9087-b0e0-41f183b70e89@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/06/2017 08:02 PM, Jo?o Paulo Rechi Vita wrote:
> Hello b43 developers,
> 
> Is it possible to use b43-fwcutter to extract firmware from Windows
> drivers? The manpage says "Currently b43-fwcutter supports Apple MacOS
> X, Microsoft Windows and Linux drivers, but keep in mind that
> b43-fwcutter doesn't support all driver versions.", but looking at
> fwcutter_list.h I don't see entries for the windows drivers. Are
> offsets for windows drivers available somewhere?

The reason that you do not see any entries for Windows drivers is because those 
drivers are stripped such that we can get the offsets, but not the description 
for that particular firmware entry. One could go through each one and identify 
the correspondence with other firmware sources, but that would be very laborious 
and error prone. I have chosen not to try that approach.

What do you hope to gain from Windows firmware? Extracting firmware from the 
Linux drivers should yield better firmware if the two operating systems have 
different requirements.

Larry
