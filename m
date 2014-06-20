From: Geoff <capsthorne@yahoo.co.uk>
Date: Fri, 20 Jun 2014 16:19:12 +0100
Subject: BCM 4311 cannot connect to router under kernel 3.15
In-Reply-To: <CACna6rzC2EHmOuR1FFM4kWKAPqUBQij1EX=EXTz3k38BpX911w@mail.gmail.com>
References: <20140620141352.cf66d6cf355510c0148a4d00@yahoo.co.uk>
 <CACna6rzC2EHmOuR1FFM4kWKAPqUBQij1EX=EXTz3k38BpX911w@mail.gmail.com>
Message-ID: <20140620161912.309525c4fd62328f7fa8aca6@yahoo.co.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 20 Jun 2014 15:46:36 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

<snip>
> Fixed by:
> [1] b43: fix frequency reported on G-PHY with /new/ firmware
> 
> The patch has yet to hit Linus's tree, then I'll be applied to older
> (stable) trees. So hopefully you will see this fix in 3.15.2 or
> 3.15.3.
> 
> For now you have to stick to 3.14, or temporarily replace your
> firmware (in /lib/firmware/b43) with the older version 478.104 (if you
> know how).

<snip>

Many thanks for the prompt response Rafa?. I had read the list archive, but I
could not tell if that was my issue, and I had no idea that reverting to older
firmware was a possible fix.  That is probably within my capabilities (I used
to do many such things when running Linux From Scratch, until Arch made
me lazy), I will give it a try.

Geoff
