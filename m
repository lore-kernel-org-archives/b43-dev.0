From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 02 Apr 2010 20:05:21 -0500
Subject: Please help - what is causing these errors and how do I fix them
In-Reply-To: <alpine.LFD.2.00.1004021943230.1957@localhost>
References: <alpine.LFD.2.00.1004021713550.1920@localhost>
	<4BB66F04.1010700@lwfinger.net>
	<alpine.LFD.2.00.1004021943230.1957@localhost>
Message-ID: <4BB69451.5040409@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/02/2010 07:57 PM, Jim Haynes wrote:
> On Fri, 2 Apr 2010, Larry Finger wrote:
> 
>>
>> Use the Broadcom wl driver or configure b43 for PIO. Did you do any
>> searching on this problem?
>>
> 
> 
> Thanks.  I did searching a few months ago, and had everything working at
> that time, but I guess I need to do a fresh search.  I'm not sure what
> it means to do either of the two things you suggest.  There is a b43
> module that came with the kernel I am running - are you saying I need
> to get the source and recompile it with something different done?
> Should that have been done by the Fedora people when they made the
> kernel?  Or is there a way to tell whether it is or is not compiled
> with PIO?
> 
> I wish things would Just Work sometimes.

We do to. Unfortunately, some boxes with Intel CPU and Phoenix BIOS get
this kind of error. We do not know why and have put a lot of effort into
the search since this problem was first reported.

If you can find a late enough Fedora kernel, it will automatically
switch to PIO when the DMA error happens. Otherwise, you might get that
functionality with compat-wireless packages. I'm an openSUSE user and do
not know the inner details of the Fedora system.

Larry
