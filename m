From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 18 May 2014 13:13:43 +0200
Subject: [wireless-next:master 83/118] sdio.c:undefined reference to
 `ssb_bus_unregister'
In-Reply-To: <20140518091708.GA23402@localhost>
References: <53781383.4VhTkq6xna8cylNO%fengguang.wu@intel.com>
 <CACna6rz6GQ62RL0eZufvp=f=zp93WRdRQduVn9vaO5d-MVEBWg@mail.gmail.com>
 <20140518091708.GA23402@localhost>
Message-ID: <CACna6rwbovBgXO0UgY3jnU=gV9a=WVq=urMp0k5UBnG2xs_+Og@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 18 May 2014 11:17, Fengguang Wu <fengguang.wu@intel.com> wrote:
> On Sun, May 18, 2014 at 11:01:09AM +0200, Rafa? Mi?ecki wrote:
>> Fengguang: please attach your bot's config.
>
> Rafa?, the original email should have the .config attached.

Oh, of course, I've no idea how I missed it. Sorry.

Btw. it seems your bot compiles kernel on DOS/Windows, or e-mail
attachments are converted to DOS new line:
./.config: line 40: $'\r': command not found
make: *** [vmlinux] Error 127

Thanks for your bot/report, I've reproduced this issue!

-- 
Rafa?
