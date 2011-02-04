From: Dale Walsh <dale@daleenterprise.com>
Date: Thu, 3 Feb 2011 22:14:52 -0500
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <1296779345.9535.46.camel@maggie>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	<1296770788.9535.1.camel@maggie>
	<20110203223430.18158.qmail@stuge.se>
	<1296773390.9535.13.camel@maggie>
	<20110203234730.28953.qmail@stuge.se>
	(sfid-20110204_004735_721902_FFFFFFFFD8BEB068)
	<1296779345.9535.46.camel@maggie>
Message-ID: <C038DB15-6427-46CC-A730-1A39CE6B9317@daleenterprise.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Feb 03, 2011, at 19:29 PM, Michael B?sch wrote:

> On Fri, 2011-02-04 at 00:47 +0100, Peter Stuge wrote:
>>> You're simply unaware of the basic Unix tools that help you find
>>> what you are searching for.
>>
>> Not at all. If I was the one looking for the code that talks to
>> hardware I'd not only know where to find it, but I'd also know every
>> other component of hardware and software that the data passes through
>> on the way.
>
> A basic thing about software abstraction is that you do _not_ need
> to know what a subsystem does internally. To understand the ssb_sprom
> file, you do _not_ have to read one single line of sysfs code.
> To understand the whole SSB SPROM writing, you have to read about 200
> lines of code.

I see so if I can compile the ssb-sprom program I am able to perform  
"flashing" of SPROM's on various Broadcom based wireless cards  
without doing anything else, not likely since the kernel may not have  
the required support or functionality.

A kernel compiled without the included dependancies and features  
doesn't support it and the linux based OS I am familiar with doesn't  
require rebuilding the kernel to add support or functionality to do  
anything but is not compatible with the the general linux  
distributions drivers.

My opinion is that there shouldn't be any dependent code in the  
kernel to perform these flashing tasks.

Finding all the code that relates to the Broadcom wireless device and  
it's functionality should be inclusive in the b43 code, having to  
look outside this code to find code that performs the flashing makes  
no sense and the use of nested abstraction layers and code buried in  
structs for functionality only makes it difficult for a person not  
familiar with the code base to locate anything and my opinion is  
there should be no need to look outside the b43 code.

You say you don't have to recompile the kernel to add support for  
things, I remember initially working with ubuntu 8.01 and having to  
recompile the kernel to add support for the Broadcom wireless cards  
because downloading and installing a wireless kernel package someone  
else made that only allowed flashing of some cards was useless.

Rewriting the nVidia drivers was something else I did since 8.0.1  
didn't seem to support multiple cards and having to install a blob  
provided by nvidia to make the card work and seeing this popup  
explaining the license of the third-party (nVidia) software was a  
waste of time so this was dumped in favor of my own code which  
included a HAL source file for the 6k and 7k series cards, not  
exactly legally obtained.

After my 8.01 experience I decided that if the OS doesn't come with  
the required support it's of no value to me, when the working 10 was  
provided on disk I didn't have to do anything or at the very least  
only minimal before flashing and since no instructions were provided  
telling me that I had to do anything other but reinstall the software  
I expected it to work as intended.

Since it seems that wireless support is now pretty much included it's  
improving but when stuff doesn't work, someone involved should be  
knowledgeable enough to know why and or to suggest commands that  
might help isolate the cause of the failure, it might have been user  
induced but it appears that after the installation of 10.10 we can  
conclude it's not a user related error since it works properly.


>
>>> Luckily the tool to find something is called "find".

You can tell "find" to find only the code specifically related to  
flashing SPROM's???

>>
>> I think you may have missed my point. One part is certainly to know
>> how to find a file in a Linux system, but more important is the
>> question of what to search for (a file) and where to search (in the
>> kernel codebase). It's not at all obvious to a newcomer where the
>> kernel edge is, or even that the kernel is so distinct.
>
> I think we're probably drifting offtopic. Why would a newcomer who
> doesn't even know what an operating system kernel is want to
> write an SSB SPROM? That guy will brick his device anyway, as
> he _will_ write incorrect data to the SPROM.

Making assumptions about some ones knowledge or experience is not a  
good thing and I have revealed nothing that would make any  
intelligent person conclude this with them first asking pertinent  
questions.

Stating I will brick cards because you lack the capacity to  
distinguish intelligence from frustration doesn't look good on you  
and you should have asked questions before making such a grand  
assumption, I have flashed more than 10,000 cards and have not  
bricked one, I have had cards that I have tried to alter LED behavior  
stop functioning because they have unsupported firmware versions that  
the application doesn't properly support but I understand that there  
is a risk involved in making changes so I limit my changes to avoid  
that conundrum.

When you can decode a DXE from an intel motherboard BIOS, contact me,  
we might have something we can discuss.

> The next thing you'll probably blame on me is that I did not  
> document in
> the b43 documentation how to use a qwerty keyboard.
> -- 
> Greetings Michael.
>
>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2.2 (Darwin)

iD8DBQFNS28siD9DTPch4RQRArguAJwKOPyljoMsinW0P2SXR0X1UzN3VACfS75E
fPwdXvX5/8BCM6IYyoIl/UI=
=T6qS
-----END PGP SIGNATURE-----
