From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 19 Apr 2013 22:46:22 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAOTQ16LgteSkmbF2_C9CZ+zF-8tRVtX-L4ZPbS79YT8FASYzJw@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <51718A1F.9070301@lwfinger.net> <20130419205710.73230d79@milhouse>
 <CAOTQ16LgteSkmbF2_C9CZ+zF-8tRVtX-L4ZPbS79YT8FASYzJw@mail.gmail.com>
Message-ID: <20130419224622.7b78aa6c@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 19 Apr 2013 22:37:28 +0200
Thommy Jakobsson <thommyj@gmail.com> wrote:

> As I mentioned in the original post I lowered it to 16 on my system
> without any problem (and I'm still running like that). I think that
> was perhaps a bit too low though, didn't do any real measurements but
> it felt like it cut off every other burst coming in. But I guess that
> also depends on the target system.

Yes 16 sounds a little low, but 32 could be a good idea to test.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130419/18347906/attachment.sig>
