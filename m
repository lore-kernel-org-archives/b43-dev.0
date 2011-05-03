From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 03 May 2011 15:05:45 -0500
Subject: LP-PHY and DMA errors: first success
In-Reply-To: <BANLkTi=TBfJrQ8YdmacmK5FKsUOAN=MaNQ@mail.gmail.com>
References: <BANLkTi=TBfJrQ8YdmacmK5FKsUOAN=MaNQ@mail.gmail.com>
Message-ID: <4DC06019.9010404@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/03/2011 02:03 PM, Rafa? Mi?ecki wrote:
> Hey,
>
> I wanted to share some great (however still early) news. For last 2
> weeks I've been working on Juan's Lenovo machine to resolve DMA errors
> on LP-PHY. I produced some patches, compare wl and b43 dumps, made
> init in them almost identical... and nothing.
>
> So I decided to check how much wl has to perform to make hardware
> stable for b43. We disabled NetworkManager to don't up interface
> automatically and just performed "modprobe wl; rmmod wl;". Thanksfully
> I was enough to correctly init hardware! We got even more luck as wl
> init appeared to be quite short, only about 200 lines of operations.
>
> So I dumped wl init ops to wl.short.txt.b43 and decided to write
> separate driver cloning that ops.
>
> This way highly hackish "jc43" driver was created. I don't include
> whole driver, just single file of it that's interesting for us. It's
> attached scan.c.
>
> Driver jc43 implements only about a half of wl init ops, but it
> appears to be enough! Loading and unloading jc43 before using b43
> seems to init hardware correctly :)
>
> Now we just need to see what part of jc43 ops is important one and
> implement it in ssb/b43 :)

Good news indeed. :)

Larry
