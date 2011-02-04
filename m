From: Dale Walsh <dale@daleenterprise.com>
Date: Fri, 4 Feb 2011 07:06:16 -0500
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <AANLkTinwd78AvXH5qy3+q3Y+_WecX4dcfnQzY5wQ3JUn@mail.gmail.com>
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
	<1296779345.9535.46.camel@maggie>
	<C038DB15-6427-46CC-A730-1A39CE6B9317@daleenterprise.com>
	<AANLkTinwd78AvXH5qy3+q3Y+_WecX4dcfnQzY5wQ3JUn@mail.gmail.com>
Message-ID: <20AF06EF-A5CC-4944-8C9D-26A451A37AE4@daleenterprise.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Feb 04, 2011, at 00:49 AM, richardvoigt at gmail.com wrote:

>> You say you don't have to recompile the kernel to add support for  
>> things, I
>> remember initially working with ubuntu 8.01 and having to  
>> recompile the
>> kernel to add support for the Broadcom wireless cards because  
>> downloading
>> and installing a wireless kernel package someone else made that  
>> only allowed
>> flashing of some cards was useless.
>
> This is not something you need to recompile the kernel to do.  You do
> need the kernel source code (check your package manager) and the
> config used by the running kernel (available in a pseudo-file) and
> that's enough to do an out-of-tree build of your driver.
>
> The idea that a user-mode application should be able to update
> firmware without kernel help is patently ridiculous no matter what
> (modern general-purpose) operating system you are expert in, since it
> requires I/O privileges that are not held by user-mode applications.
> But such an application can be distributed with the source code and
> build system for an out-of-tree build of the relevant kernel code, in
> which case administrator rights will be needed to insert the kernel
> module, but the installation process needn't involve replacing any
> boot files as would be done after a kernel recompile.
>

I made no claim that kernel help was not required to perform a task,  
I only know what I have experienced in the past regarding flashing  
Broadcom devices.

If that really is the case, then why when building and installing it  
does it create such a large package and install a kernel and support  
files and modify the grub menu rather than install just the required  
driver and application and allow it to function regardless of the  
selected kernel?

When I was working in 8.01 the application and b43 driver alone was  
insufficient to allow flashing, this may be different in newer  
versions but at that time I was unable to make it work without  
installing all kinds of stuff (the full pkg) and selecting the  
modified kernel in the boot loader menu in order to flash the cards  
otherwise it refused to write to any of the BCM94321 I had claiming  
it was an unsupported PHY and would not allow operation on it.

As I recall further, I had to make patches to disable certain checks  
so it would allow writing to any Broadcom cards rather than certain  
cards and some simple apps to change the ID's in the file and  
recalculate the checksum were simple since this is the only required  
changes, I don't need to know what the other bytes represent since  
these are not being altered.

I've worked in FreeBSD, Darwin (not Mac OS X) and Mac OS X and I have  
never had any issues accessing kernel or user space or even modifying  
protected resources or memory on the fly.

There are API's and frameworks to handle those accesses and it's a  
matter of utilizing the correct framework.

I've converted all kinds of drivers from the ubuntu tree to run under  
Mac OS X and for the most part the majority of the code is discarded  
due to the specific kernel ties.

I wrote an application to take existing nVidia SPROM firmware image  
form the card, generate an EFI compatible firmware image, merge the  
two images, correct checksums and firmware size and then reflash the  
card (as long as the SPROM is large enough to contain the new image)  
occurs in about 800 lines of C code and no driver is required to be  
loaded, it finds the device on the PCI bus by ID and there is nothing  
in the ubuntu tree that contains this functionality otherwise I would  
have borrowed it.


If you wish to knit-pick over details knock yourself out but you need  
to stop making assumptions about what I know and don't know.

Explaining in great detail serves no real purpose other than bragging  
and I really have nothing to contribute to the b43 driver or ubuntu  
so explicit details on the b43 code is of no concern to me, it either  
works or it doesn't, if it doesn't then I look for a solution, if it  
does then I have a flashing solution and don't need to look further.

It also seems that people involved with these projects are too  
sensitive, if you don't say something just right or don't mention  
something they get bent out of shape and go off attacking people  
labeling them as morons and idiots, very professional for someone  
involved in a public project who goal is to support the code they  
provide.

I'm not familiar with the code base because after looking at all the  
files I've personally decided it's a structured mess and I will go to  
the group responsible for a particular piece of code when I have  
issues rather than waste months of time learning the code base so I  
can fix it myself, far too time consuming for something that serves a  
single purpose and needs to work immediately.

If there was no solution then I would have to spend the time creating  
something but re-inventing the wheel is an exercise in poor time  
management when time is not something you have.

10.04 is broken, 10.10 works, and this satisfies me, going back and  
playing with 10.04 to find out why or playing with an upgrade path is  
not something I have time for and the condescending attitudes makes  
it less attractive.

If someone else comes experiencing this issue you can inform them  
that 10.10 works as verified by others as well and that should pretty  
much be the end of it unless they have the time and want to spend the  
time digging further but I would suggest curbing the attitude and  
taking a more relaxed approach if you really want to receive  
assistance in debugging things.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2.2 (Darwin)

iD8DBQFNS+u4iD9DTPch4RQRAiktAKCXXcspz5QJrMxln4rociQScPyMVACfWDT6
TZBLZD8AA0yTpU799s4/DkE=
=cbz0
-----END PGP SIGNATURE-----
