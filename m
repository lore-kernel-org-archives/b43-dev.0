From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 23 Oct 2012 14:47:41 -0500
Subject: b43 driver NULL pointer dereference on 3.4.15
In-Reply-To: <5086EBC0.6010701@gmx.eu>
References: <50861EE6.70902@gmx.eu> <5086AF4D.5070404@lwfinger.net>
 <5086EBC0.6010701@gmx.eu>
Message-ID: <5086F45D.9080204@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/23/2012 02:10 PM, Markus Kanet wrote:
> Am 23.10.2012 16:53, schrieb Larry Finger:
>> When I did the b43legacy patch, it seemed reasonable that b43 also
>> needed a similar fix, but I could not get b43 to fail on two different
>> systems. Does the patch below work for you?
>
> Thanks for the patch, but it does not apply correct to the 3.4.15 kernel
> sources. Maybe because of the code after the two extra lines looks different
> from your patch and from the 3.4.15 sources.
>
> I tried to add the two lines manually to the kernel sources and did a rebuild of
> the 3.4.15 kernel and it seem to work. At least i don't get any errors on
> shutdown or when using rmmod.
>
> Attached is my patch with a bit more of context... please check twice if it is
> correct.

I don't run kernel 3.4.15. My patch was for wireless-testing, which is the one 
that would be needed for submission. In addition, the hunk I supplied was for 
b43_bcma_remove() and one is also needed for b43_ssb_remove(). I will annotate 
the patch for porting to stable. When that happens, I will need to modify the 
patch for 3.4.X.

Thanks for testing.

Is it OK if I add a "Tested-by: Markus Kanet <dvmailing@gmx.eu> to the submitted 
patch?

Larry
