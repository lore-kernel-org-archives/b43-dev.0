From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 27 Aug 2011 13:22:16 +0100
Subject: [QUESTION] 4331 support
In-Reply-To: <87k49zkq30.fsf@purkki.adurom.net>
References: <CACBz148HiqaUWqxNOddxhTH5qYUKTg6Gk6gk7W2Mb_t7jRX=nQ@mail.gmail.com>
	<1314023603.21805.75.camel@shinybook.infradead.org>
	<4E526BE6.3020504@lwfinger.net>
	<1314024656.21805.79.camel@shinybook.infradead.org>
	<87ty93m4zx.fsf@purkki.adurom.net>
	<1314446955.14057.146.camel@shinybook.infradead.org>
	<87k49zkq30.fsf@purkki.adurom.net>
Message-ID: <1314447737.14057.154.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 2011-08-27 at 15:15 +0300, Kalle Valo wrote:
> David Woodhouse <dwmw2@infradead.org> writes:
> 
> > On Sat, 2011-08-27 at 15:08 +0300, Kalle Valo wrote:
> >> > It should be possible for it to be based on the latest release from
> >> > Linus.
> >> 
> >> But then it would not contain all the changes in wireless-testing.
> >
> > That is the point, yes.
> 
> Then b43 would be out of sync from rest of wireless development, for
> example everything that's happening in mac80211 etc. To me that sounds
> bad.

No, that's fine ? it's quite normal. The generic hardware support, like
BCM4331 and new PHY support, is much better off that way.

Where we are making intrusive changes to mac80211 that require changes
to all drivers simultaneously, we can still do those in wireless-testing
on top of the changes from the b43 tree.

(Or if there was a proper git tree with the core mac80211 changes, a b43
tree could also just pull from that tree. But that probably isn't
necessary.)

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 5818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110827/fc2189a0/attachment.bin>
