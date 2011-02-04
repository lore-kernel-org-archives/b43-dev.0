From: Dale Walsh <dale@daleenterprise.com>
Date: Fri, 4 Feb 2011 07:17:26 -0500
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <1296818455.19557.11.camel@maggie>
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
	<C038DB15-6427-46CC-A730-1A39CE6B9317@daleenterprise.com>
	(sfid-20110203_221456_874114_36A0BE2C)
	<1296818455.19557.11.camel@maggie>
Message-ID: <F7733BBE-DFBC-4054-98D0-FB909DD14123@daleenterprise.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Feb 04, 2011, at 06:20 AM, Michael B?sch wrote:

> On Thu, 2011-02-03 at 22:14 -0500, Dale Walsh wrote:
>> I see so if I can compile the ssb-sprom program I am able to perform
>> "flashing" of SPROM's on various Broadcom based wireless cards
>> without doing anything else, not likely since the kernel may not have
>> the required support or functionality.
>>
>> A kernel compiled without the included dependancies and features
>> doesn't support it and the linux based OS I am familiar with doesn't
>> require rebuilding the kernel to add support or functionality to do
>> anything but is not compatible with the the general linux
>> distributions drivers.
>>
>> My opinion is that there shouldn't be any dependent code in the
>> kernel to perform these flashing tasks.
>>
>> Finding all the code that relates to the Broadcom wireless device and
>> it's functionality should be inclusive in the b43 code, having to
>> look outside this code to find code that performs the flashing makes
>> no sense and the use of nested abstraction layers and code buried in
>> structs for functionality only makes it difficult for a person not
>> familiar with the code base to locate anything and my opinion is
>> there should be no need to look outside the b43 code.
>
> Wow, it's really funny to read your mail.
> That stuff is so clueless and ridiculous... You must be the
> master troll.
>
> I do actually remember why I put you into my mailfilters back in 2008.
> I did one mistake, however. I later reinstalled the machine and did
> not put the filters back.
>
> To say once again what I already said in 2008:
> We are not your personal support army for your questionable business.
>
> --  
> Greetings Michael.

Support the code you provide publicly is your purpose, me fixing it  
for you is not support.

What questionable business?

It's against the law to modify a cards ID's?

You like the ubuntu code base and that is your choice, mine is  
different, I believe it suffers from poor management and it is not  
your place to dictate what my opinion should be.

Since you acknowledge you are responsible for this b43 code then make  
sure it works and I wont have to come asking why it doesn't and why  
you broke it, or are you now acknowledging that it's not sound code  
and is questionable if it works type of software?

You know what, no need to respond, you have nothing intelligent to  
add as evident of your responses so do yourself a favor and don't  
bother and it will die off.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2.2 (Darwin)

iD8DBQFNS+5WiD9DTPch4RQRAgaSAJ4pU3bhBFOY/ehD4xSDO3pYr7zwagCghYsI
kTzJpdRSJH5CtJ1mIcUeM/E=
=g6E+
-----END PGP SIGNATURE-----
