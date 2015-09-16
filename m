From: Kyle Sanderson <kyle.leet@gmail.com>
Date: Tue, 15 Sep 2015 21:19:31 -0700
Subject: BCM4360 support
In-Reply-To: <55F5A68C.6070800@gmail.com>
References: <CAEiiMrqp2pDFa5v_tAZCg+pSQcAN0zyX8qUT_r1LSmRyrGg+vg@mail.gmail.com>
 <55F5A68C.6070800@gmail.com>
Message-ID: <CACsaVZK8fLZJhR5hiEFonDv-AEwUOa0yBWKtcvOc6Wdqee6QTw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

http://lxr.free-electrons.com/source/drivers/net/wireless/b43/Kconfig?v=4.1#L169

I have a router with this device that runs on ARM, admittedly I
haven't had a moment to try it out. It does say broken in the KConfig,
however there are other comments that seem to support it. YMMV.

Kyle.

On Sun, Sep 13, 2015 at 9:38 AM, Sven K?hler <sven.koehler@gmail.com> wrote:
> Hi,
>
> Am 10.09.2015 um 00:49 schrieb Moro Modo:
>> I've bought a new PCE-AC68 from Asus. It uses the BCM4360. I wanted to
>> know, if you guys are up to a solution to support this device?
>
> I would like to know that too. I have an ASUS Notebook which uses a
> BCM4360 based card. I have to use Broadcom's driver, which doesn't even
> work that great, especially if I enable 802.11n on my access point.
>
> I would appreciate a driver that only supports 802.11g or even 802.11n
> but lacks 802.11ac support, hoping that this makes things easier.
>
>
>
> Regards,
>   Sven
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
