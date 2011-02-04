From: richardvoigt at gmail.com <richardvoigt@gmail.com>
Date: Thu, 3 Feb 2011 23:49:38 -0600
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <C038DB15-6427-46CC-A730-1A39CE6B9317@daleenterprise.com>
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
Message-ID: <AANLkTinwd78AvXH5qy3+q3Y+_WecX4dcfnQzY5wQ3JUn@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> You say you don't have to recompile the kernel to add support for things, I
> remember initially working with ubuntu 8.01 and having to recompile the
> kernel to add support for the Broadcom wireless cards because downloading
> and installing a wireless kernel package someone else made that only allowed
> flashing of some cards was useless.

This is not something you need to recompile the kernel to do.  You do
need the kernel source code (check your package manager) and the
config used by the running kernel (available in a pseudo-file) and
that's enough to do an out-of-tree build of your driver.

The idea that a user-mode application should be able to update
firmware without kernel help is patently ridiculous no matter what
(modern general-purpose) operating system you are expert in, since it
requires I/O privileges that are not held by user-mode applications.
But such an application can be distributed with the source code and
build system for an out-of-tree build of the relevant kernel code, in
which case administrator rights will be needed to insert the kernel
module, but the installation process needn't involve replacing any
boot files as would be done after a kernel recompile.
