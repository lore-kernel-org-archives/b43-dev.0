From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 02 Feb 2011 21:27:11 -0600
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
Message-ID: <4D4A208F.50408@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/02/2011 01:50 AM, Dale Walsh wrote:
> On Feb 01, 2011, at 11:28 AM, Larry Finger wrote:
> 
>> On 02/01/2011 05:23 AM, Dale Walsh wrote:
>>> I had a hard drive failure which forced me to perform a fresh/clean
>>> installation of ubuntu 10 on a new drive since the old drive no longer
>>> functions (it was rather old).
>>>
>>> My use of the b43 software is only for modification of the PCI ID's of
>>> the flashrom and the original installation was provided to me on the HD.
>>>
>>> Now I am unable to write the flashrom after the new installation it
>>> always reports "write error: Operation Not Supported" and this is using
>>> the same cards I was flashing before, I even tried using
>>> a previously modified card and I get the same failure.
>>>
>>> Since it worked before I can only conclude that the new software is
>>> broken and the ability to write is a requirement, can someone help me
>>> resolve this please.
>>
>> I do not doubt that the SPROM writing function is broken, but I wonder
>> why you
>> are needing it now. Why was it necessary to rewrite the SPROM in the first
>> place? Once that was done, then it should never need to be done again.
>> Please
>> explain what you did and what you are doing now.
> 
> Since not all cards are created equal I take a card with specific
> features and functionality, change the ID's to my own for use with my
> own custom drivers which provides added functionality for cards with my
> ID's.
> 
> If the cards do not have my ID's they have the basic functionality that
> people are used to seeing, with my ID's they have the ability to run
> in simultaneous dual band mode (2.4ghz and 5ghz adhoc) and I use these
> ID's to ensure that the drivers only work on cards I approve.
> 
> My only need for linux is to rebrand the cards with my ID's.
> 
> If I understood enough about the write mechanism I would forego the b43
> code all together and create an app that reads and writes the flashrom
> but the time involved  in sifting through the ubuntu code due to it's
> source structure makes it a daunting task that turns me off.
> 
> 
> As before when working in the original installation (provided to me as a
> working installation) I would do the following: (both cat and cp fail)
> 
> 
> sudo su; # become root to avoid permission issues
> 
> cd /PATH TO DIR OF ssb_sprom; # I verify ssb_sprom exists in this location
> 
> rmmod b43; # unload the driver
> 
> cat updated_sprom >ssb_sprom; # write the updated file
> 
> 
> This results in write failure under the new installation.
> 
> 
> cp updated_sprom >ssb_sprom
> 
> 
> This also results in a write failure under the new installation.

I'm a little confused as the PCI IDs are not in the SPROM. Using the procedure
you describe, you would be unable to change them.

You say you use Ubuntu 10. Is it 10.04 or 10.10? The earlier one uses kernel
2.6.32, which I have not tested; however, I did try kernels 2.6.34 and 2.6.38.
Both could write the SPROM for a Cardbus device without any problem.

Larry
