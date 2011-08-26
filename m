From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 26 Aug 2011 12:01:34 -0500
Subject: 4331 support
In-Reply-To: <1838685278-1314375210-cardhu_decombobulator_blackberry.rim.net-399296528-@b15.c18.bise7.blackberry>
References: <1838685278-1314375210-cardhu_decombobulator_blackberry.rim.net-399296528-@b15.c18.bise7.blackberry>
Message-ID: <4E57D16E.7070006@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/26/2011 11:13 AM, james at jamesanslow.net wrote:
> Thanks for the heads-up larry. Can you direct me towards where that's hosted?
>
>
> ------Original Message------
> From: Larry Finger
> Sender: Larry Finger
> To: James Anslow
> Cc: b43-dev at lists.infradead.org
> Subject: Re: 4331 support
> Sent: 26 Aug 2011 16:57
>
> On 08/26/2011 10:38 AM, James Anslow wrote:
>> I am using 2.6.38-11 if you mean linux kernel source.
>
> Yes, I mean the kernel source.
>
> If you want to use the 4331, you will need the very latest kernel source from
> the wireless-testing git tree.
>
>
> A. Because it messes up the way people read things.
> Q. Why is top posting bad?

You need to install git and do a

git clone 
git://git.kernel.org/pub/scm/linux/kernel/git/linville/wireless-testing.git

The source will be in wireless-testing directory. To get future updates, cd to 
that directory and 'git pull'.

Obviously, my subtle A./Q. quote was not sufficient. Top posting in most mailing 
lists is discouraged. Look at where your question is in the flow of this 
posting. How is one to follow the reasoning?

Larry
