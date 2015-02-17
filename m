From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 17 Feb 2015 16:57:26 +0100
Subject: BCM4360 support
In-Reply-To: <20150217164026.Horde.hDfOb0v4Cn9U42DqNQJxfoA@webmail.domainplanet.at>
References: <20150217164026.Horde.hDfOb0v4Cn9U42DqNQJxfoA@webmail.domainplanet.at>
Message-ID: <CACna6rzUjU8WCHMN7+zWVJbsrs_iBSHceTr=C3WQ03zPbqpzNg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 17 February 2015 at 16:40,  <ockham@raz.or.at> wrote:
> I recently got a new MacBook Pro Retina (15"), which comes with a Broadcom
> 4360 Wifi:
>
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4360 802.11ac
> Wireless Network Adapter [14e4:43a0] (rev 03)
>
> I installed Fedora 21 on it. Getting Wifi up and running was sort of a PITA,
> as it required installing the kmod-wl RPM via an USB stick [1].
>
> Can I, as a user, contribute to having the b43 kernel module support BCM4360
> [2], e.g. by testing stuff?

Not really. I already have some AC-PHY hardware, once I get it
running, it may be useful to test other models as well. But today
we're still far away from getting it running.

There were some *early* changes to start AC-PHY development like:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3c313161353ad527de1a6ecde0f0d41700858fd6
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=8be08a39d498d5d93ff5149276e34ccb4ec3757f
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=86144b01a25185ec092b9301e340ca4f7a8c0d92
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=3f7bb3f34cc880bc35f6c278be16cd8afee7c524
but really, it's just a beginning. It will still take a lot of time to
get anything testable.
