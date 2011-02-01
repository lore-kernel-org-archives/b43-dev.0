From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 01 Feb 2011 10:28:48 -0600
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
Message-ID: <4D4834C0.5060701@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/01/2011 05:23 AM, Dale Walsh wrote:
> I had a hard drive failure which forced me to perform a fresh/clean
> installation of ubuntu 10 on a new drive since the old drive no longer
> functions (it was rather old).
> 
> My use of the b43 software is only for modification of the PCI ID's of
> the flashrom and the original installation was provided to me on the HD.
> 
> Now I am unable to write the flashrom after the new installation it
> always reports "write error: Operation Not Supported" and this is using
> the same cards I was flashing before, I even tried using
> a previously modified card and I get the same failure.
> 
> Since it worked before I can only conclude that the new software is
> broken and the ability to write is a requirement, can someone help me
> resolve this please.

I do not doubt that the SPROM writing function is broken, but I wonder why you
are needing it now. Why was it necessary to rewrite the SPROM in the first
place? Once that was done, then it should never need to be done again. Please
explain what you did and what you are doing now.

Larry
