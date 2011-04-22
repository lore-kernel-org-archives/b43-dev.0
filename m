From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sat, 23 Apr 2011 01:37:15 +0200
Subject: problems with b43 and greedy traffic
In-Reply-To: <BANLkTi=XR+WO7ODxW4wPxWhk-rd_UoSOog@mail.gmail.com>
References: <F77781A1-9992-4893-AA53-8D1FE37D772F@ing.unibs.it>
	<4DB09CE6.9020405@lwfinger.net>
	<97728AB8-E890-4880-9D77-55F5980AF0A9@ing.unibs.it>
	<815E2326-5CB8-4ACC-9AFF-B30FFA9E2311@ing.unibs.it>
	<BANLkTi=XR+WO7ODxW4wPxWhk-rd_UoSOog@mail.gmail.com>
Message-ID: <A685CB41-7DF8-49FF-9008-9AB93A63C6E1@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Apr 22, 2011, at 11:07 PM, Tom Gundersen wrote:

> On Fri, Apr 22, 2011 at 9:58 PM, Francesco Gringoli
> <francesco.gringoli@ing.unibs.it> wrote:
>>> I just finished bisecting, git tells
>>> 
>>>       fc6055a5ba31e2c14e36e8939f9bf2b6d586a7f5 is first bad commit
> 
> Relevant: <http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=cff0d6e6edac7672b3f915bb4fb59f279243b7f9>?
> 
> -t
Hi Tom,

sure, filling that flag for a socket like in the patch does could help but I'm not sure a device driver should ever do that.

Thanks,
-Francesco
