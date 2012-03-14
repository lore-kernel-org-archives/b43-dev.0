From: Alexander James Bourne Shearn <A.J.B.Shearn@sms.ed.ac.uk>
Date: Wed, 14 Mar 2012 19:32:10 +0000
Subject: Possible bug/error in web pages
In-Reply-To: <CACna6rxKyqJUfr1dAS_47f8XUVuAbZNXRou+8Hi2SK81Lc0byg@mail.gmail.com>
References: <028EB217-5C26-408B-B425-0041FFDE742B@sms.ed.ac.uk>
 <CACna6rwy1OPP+rnEbjPMCZoDHKoEZVYbtPQk5MzCBLy4ppoikg@mail.gmail.com>
 <20120314173031.chattvvtc8kgkwwo@www.sms.ed.ac.uk>
 <CACna6rxKyqJUfr1dAS_47f8XUVuAbZNXRou+8Hi2SK81Lc0byg@mail.gmail.com>
Message-ID: <20120314193210.vx9j1vtx444kcoss@www.sms.ed.ac.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Quoting Rafa? Mi?ecki <zajec5@gmail.com> on Wed, 14 Mar 2012 19:45:34 +0100:

> 2012/3/14 Alexander James Bourne Shearn <A.J.B.Shearn@sms.ed.ac.uk>:
>> I've found the relevant posts on the mailing list about the B43_BCMA_EXTRA
>> flag. Only thing is, I'm not sure where to set this! Is it during kernel
>> compilation, or is it a flag for a different package? Can I set it somewhere
>> when I build the compat-wireless package instead of compiling the entire
>> kernel?
>
> Please, keep b43-dev as Cc.
>
> Yes, if you're using recent kernel you need to use
> B43_BCMA_EXTRA
> It has to be set at compilation time. I don't know much about
> compat-wireless, it should be possible to use B43_BCMA_EXTRA for
> compat-wireless as well, but I can't say how.
>
> --
> Rafa?
>
>

Thanks - got it all sorted!
Just to document what I did: downloaded compat-wireless, and compiled  
with B43_BCMA_EXTRA='y'.

Then did 'make unload', and 'modprobe b43'. All works fine, injection  
working great.

I'll write this up somewhere to document for other users.


Cheers for the help!
Yours,

Alex Shearn


-- 
The University of Edinburgh is a charitable body, registered in
Scotland, with registration number SC005336.
