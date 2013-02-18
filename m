From: Thomas D. Dean <tomdean@speakeasy.org>
Date: Mon, 18 Feb 2013 13:25:30 -0800
Subject: Debian 6 b43 not working
In-Reply-To: <51228F2A.1010803@lwfinger.net>
References: <512285A3.40209@speakeasy.org> <512287FF.1080303@speakeasy.org>
 <51228F2A.1010803@lwfinger.net>
Message-ID: <51229C4A.6030502@speakeasy.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/18/13 12:29, Larry Finger wrote:

> If Debian has a compat-wireless package for your kernel, please try it.
> That will likely fix the problem. If there is no pre-built package, then
> you can get the source from
> https://backports.wiki.kernel.org/index.php/Releases. I would recommend
> the 3.7.6 release.
>
> Larry

I did not find a compat-wireless or compat-drivers package.

I downloaded and unpacked compat-drivers-3.7.6 - note the new name...

I used scritps/driver-select b43 then make and install.

Fixed the problem.

Thanks,
Tom Dean
