From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 18 Oct 2010 18:23:19 +0200
Subject: brcm80211 driver inject
In-Reply-To: <114953.68277.qm@web111408.mail.gq1.yahoo.com>
References: <114953.68277.qm@web111408.mail.gq1.yahoo.com>
Message-ID: <AANLkTinqnPS7E9mCnuQO5MG4Sts02qnZiw=d1c=U7cDQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, Oct 18, 2010 at 3:48 PM, Ariel Pedraza <pedrazaa@yahoo.com> wrote:
> Hi, did you know if there is a solution for this error?:
>
> "mon0 is on channel -1, but the AP uses channel 1"
>
> on programs like aireplay-ng, I'm using the brcm80211 driver.
>
> Thanks

Known bug in mac80211.
http://patches.aircrack-ng.org/channel-negative-one-maxim.patch fixes
it, but is unsuitable for inclusion, and some kernel developers
actually consider this a feature, and refuse to fix it.

>
>
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
