From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 2 Aug 2014 00:29:34 +0200
Subject: b43-fwcutter: add helper script for getting firmware
In-Reply-To: <20140801233556.7a117cf1@wiggum>
References: <CACna6rz8TMrhkrSJWsxuBAzNjNew8usn9qo1zHgtPQUCtT-_2A@mail.gmail.com>
 <20140801204454.21badf20@wiggum>
 <CACna6ryu_Gw_sF2ec9ZkSoh=cLrX1T2FTt_2s+qkGNzWUcDnwg@mail.gmail.com>
 <20140801233556.7a117cf1@wiggum>
Message-ID: <CACna6rzHw+CAbu8zu673DXux-=o9miPJyHbKQeopYiRwDU5KQw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 1 August 2014 23:35, Michael B?sch <m@bues.ch> wrote:
>> What about handling it in a kernel? If we ever start supporting new,
>> backward incompatible, version of firmware, maybe we should use
>> something like a /lib/firmware/b43-v123/?
>
> Yes, we should _have_ done this. But we didn't.
> We could simply ignore old incompatible kernels (...)

I think we broke that compatibility in 3.2, which is one before the
oldest supported longterm. I don't see a point in fixing that old
breakage now, when only 2.6.32 keeps affected. But I'll be more
careful in the future!

Thanks for discussion!
