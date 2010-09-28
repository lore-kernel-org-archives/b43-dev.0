From: Luis R. Rodriguez <mcgrof@gmail.com>
Date: Tue, 28 Sep 2010 09:42:37 -0700
Subject: How to set multicast rate ?
In-Reply-To: <001201cb5ed6$7bcaed60$7360c820$@gmx.net>
References: <001201cb5ed6$7bcaed60$7360c820$@gmx.net>
Message-ID: <AANLkTikXhrXS5Dg07HiQE7ofHaDqtWrEXMOB4NGdrETH@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, Sep 27, 2010 at 11:29 PM, h2o-post <h2o-post@gmx.net> wrote:
> Hi all,
>
>
>
> In our Freifunk mesh network we run several broadcom devices in adhoc
> modewith olsr routing.
>
> To move to b43 we did some testing with current OpenWrt trunk and b43.
>
> One crutial observation we made: We were not able to find the knob to change
> the multicast rate in b43.
>
> Since this is an essential tuning parameter in our current mesh and
> essential for proper olsr routing.
>
> To be more precise, olsr probing traffic is send out as mulicast traffic,
> therefore we use a multicast rate
>
> e.g. of 6MBit/sec ? so in densed mesh you got only routes with the multicast
> rate as lower limit.
>
> Is there any secret I missed to change the multicast rate in b43 ?
>
> If this is not implemented so far, what would be a sketch to help here
> implementing ?

Read the documentation for rate_control_send_low() :

http://tinyurl.com/rate-controlhttp://tinyurl.com/rate-control-send-low-send-low

  Luis
