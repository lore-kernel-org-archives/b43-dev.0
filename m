From: Dale Walsh <dale@daleenterprise.com>
Date: Thu, 3 Feb 2011 18:36:22 -0500
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <1296770788.9535.1.camel@maggie>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	(sfid-20110203_065003_117141_E1A4725F)
	<1296734372.26739.21.camel@maggie>
	<BBF13C67-6DC8-4ED3-A4C2-13F6FB4F090A@daleenterprise.com>
	(sfid-20110203_132714_452564_235F4728)
	<1296770788.9535.1.camel@maggie>
Message-ID: <079FAB8F-1303-41DB-ACC9-D04E284EDDF7@daleenterprise.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Feb 03, 2011, at 17:06 PM, Michael B?sch wrote:

> On Thu, 2011-02-03 at 07:27 -0500, Dale Walsh wrote:
>> Well something is causing the failure and if the ubuntu/linux code-
>> base wasn't such a mess I'd go through and fix it myself.
>
> I'm wondering to what mess you are referring.
> I don't think the SPROM writing code is that bad.

The SPROM writing code itself might not be so bad but the b43 code  
has stuff all over the place and scavenging through all the files  
trying to find the relevant material would require more time that I  
have to get a working solution, not exactly what I'd call cohesive  
when you start looking at code and you have to look all over the  
place to find stuff, my dislike is in the structure or I should state  
lack of.

This is not to say that the package as a whole is not good but having  
to rebuild a kernel to add driver support is in my opinion a poor  
design concept, drivers should be standalone and not require  
additional code inserted in the kernel to obtain functionality.

If I could extract the code and generate a standalone app to perform  
the flash it would make it much easier to resolve write issues.

>> I installed ubuntu 10.10 and it works so there is something in the
>> 10.04 CD ubuntu sent me that causes the failure so for future
>> reference, you can tell them to upgrade to 10.10 and the failure goes
>> away.
>
> I suggest you report this to the Ubuntu bugzilla.

Report what?

It's mentioned that the code is messed up and 10.10 works so what's  
the point in mentioning it again.

> -- 
> Greetings Michael.
>
>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2.2 (Darwin)

iD8DBQFNSzv3iD9DTPch4RQRAphvAJwI0fqzUziWjdNGOMs56qF3Ns0ZiACZAds8
tcwE4srP+t7ojMhQUgGaOUc=
=U5xc
-----END PGP SIGNATURE-----
