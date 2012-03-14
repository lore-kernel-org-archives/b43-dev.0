From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 14 Mar 2012 19:45:34 +0100
Subject: Possible bug/error in web pages
In-Reply-To: <20120314173031.chattvvtc8kgkwwo@www.sms.ed.ac.uk>
References: <028EB217-5C26-408B-B425-0041FFDE742B@sms.ed.ac.uk>
 <CACna6rwy1OPP+rnEbjPMCZoDHKoEZVYbtPQk5MzCBLy4ppoikg@mail.gmail.com>
 <20120314173031.chattvvtc8kgkwwo@www.sms.ed.ac.uk>
Message-ID: <CACna6rxKyqJUfr1dAS_47f8XUVuAbZNXRou+8Hi2SK81Lc0byg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/3/14 Alexander James Bourne Shearn <A.J.B.Shearn@sms.ed.ac.uk>:
> I've found the relevant posts on the mailing list about the B43_BCMA_EXTRA
> flag. Only thing is, I'm not sure where to set this! Is it during kernel
> compilation, or is it a flag for a different package? Can I set it somewhere
> when I build the compat-wireless package instead of compiling the entire
> kernel?

Please, keep b43-dev as Cc.

Yes, if you're using recent kernel you need to use
B43_BCMA_EXTRA
It has to be set at compilation time. I don't know much about
compat-wireless, it should be possible to use B43_BCMA_EXTRA for
compat-wireless as well, but I can't say how.

-- 
Rafa?
