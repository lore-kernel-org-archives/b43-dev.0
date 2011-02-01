From: Ehud Gavron <gavron@wetwork.net>
Date: Tue, 01 Feb 2011 05:57:16 -0700
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
Message-ID: <4D48032C.4070107@wetwork.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/01/2011 04:23 AM, Dale Walsh wrote:
> I had a hard drive failure which forced me to perform a fresh/clean installation of ubuntu 10 on a new drive since the old drive 
> no longer functions (it was rather old).
>
> My use of the b43 software is only for modification of the PCI ID's of the flashrom and the original installation was provided to 
> me on the HD.
>
> Now I am unable to write the flashrom after the new installation it always reports "write error: Operation Not Supported" and this 
> is using the same cards I was flashing before, I even tried using a previously modified card and I get the same failure.
>
> Since it worked before I can only conclude that the new software is broken and the ability to write is a requirement, can someone 
> help me resolve this please.
>
> -- Dale
>
>
Rafal covered some commits but I'm confused why you don't restore your backup and see why that works and your current system doesn't.

Best regards,

Ehud Gavron
Tucson AZ US SOL3

>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev

-- 
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110201/e09c6b66/attachment.html>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: ehudwetworkcontactqrcode.png
Type: image/png
Size: 1007 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110201/e09c6b66/attachment.png>
