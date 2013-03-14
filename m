From: David Woodhouse <dwmw2@infradead.org>
Date: Thu, 14 Mar 2013 14:58:36 +0000
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <CACna6ryEBFqg1ORRcbob+FWcFGiMt9fOfQAkAov9wmoR8M4Fxw@mail.gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
 <1363171283.32099.343.camel@i7.infradead.org>
 <CACna6ryEBFqg1ORRcbob+FWcFGiMt9fOfQAkAov9wmoR8M4Fxw@mail.gmail.com>
Message-ID: <1363273116.4853.58.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Thu, 2013-03-14 at 00:19 +0100, Rafa? Mi?ecki wrote:
> 
> > If you have a git tree I can pull this from, I'd be happy to give it
> > some testing...
> 
> You can try wireless-testing:
> http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-testing.git

Thanks. This is not an improvement here.

Sitting at my desk, about 5m from my WNDR3800 access point with walls
and chimney in between them, I was previously seeing a TX rate of 48Mb/s
up to 54Mb/s (reported by 'iwconfig wlan0' and also as the RX rate for
the corresponding wireless client in OpenWRT's status page).

A primitive test copying a 143MiB file to a wired host would take 35
seconds, averaging 4.1MiB/s.

With these changes I get TX rates of about 18-24Mb/s and copying the
same file takes 82 seconds, averaging 1.7MiB/s

That's comparing the Fedora 3.8.2-206.fc18.x86_64 kernel with current
wireless-testing, rather than wireless-testing from before and after
your changes. But that shouldn't matter, presumably?

Do you want me to do some more specific tests?

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 6171 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130314/5b34893f/attachment-0001.bin>
