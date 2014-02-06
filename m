From: grarpamp <grarpamp@gmail.com>
Date: Thu, 6 Feb 2014 15:02:11 -0500
Subject: Need to match driver to microcode?
In-Reply-To: <52F3BE32.9030303@lwfinger.net>
References: <CAD2Ti2-Q8-km40GPZ+pZ2v4cBkUN3vLM_a+2mCLOOtgZ=jdOxg@mail.gmail.com>
 <52F2CFEB.6000307@lwfinger.net>
 <CAD2Ti2_KU5p-F=ipdfrBEAh3-6=i6m_6fWNqLJzR5gJdhWsZ6w@mail.gmail.com>
 <52F2EA75.3080400@lwfinger.net>
 <CAD2Ti2-k3YXeugqjTT+O_Gj71=rviUtuUzBs8GRCOane+c-qYQ@mail.gmail.com>
 <52F33840.4060208@lwfinger.net>
 <CAD2Ti2-W97qW40LoXFBNqcPXQ+vA7V7sAnZ_ZerxiknRNuF5Dg@mail.gmail.com>
 <52F3BE32.9030303@lwfinger.net>
Message-ID: <CAD2Ti2_iYUCD=Px+NXapuaGqiknErOOgXhsMar-_SYjuY+Ft7A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, Feb 6, 2014 at 11:54 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> Because Broadcom uses Linux for the OS in their routers

Didn't know they made consumer routers or published any
GPL packages, I think you meant people like Linksys do, not
Broadcom. I'll search broadcom site more for this though.

> Not all of Broadcom's drivers are suitable. For example, it has never seemed
> fruitful to download 300-500 MB of stuff to extract approximately 1 MB of
> firmware. My repository contains files that are no larger than ~10 MB.

If it's critical download/space issue for devs to check for new firmware
revs, I'll download and unpack any links to big GPL zipfiles that people
send me. The 10MB was first reached with some microcode 5xx and
up, now it's at least 20MB, but the links are in fwcutter_list.h for people.

As usual, 7z compresses apsta.o the best to under 20% original
size, so under 6MB for all those redistributable apsta.o's.

> Windows drivers are stripped to the point that the firmware locations are
> not easily determined, thus I avoid them.

Wondered about that since all I've seen are the GPL apsta.o ones
that objdump probably only works with (never tried to find any windows
drivers with fw inside to try to mklist them).

Anyway, my question was mostly about what the fw/mic xxx.xx
and driver x.x.x.x number relation was (none really), and whether
any new fw was always simply cuttable, loadable and expected
to work as such (not necessarily). I get that now. Thanks.
