From: David Woodhouse <dwmw2@infradead.org>
Date: Mon, 29 Mar 2010 09:00:25 +0100
Subject: [PATCH V2] ssb: Implement virtual SPROM on disk
In-Reply-To: <20100329094416.125cf970@vaiolo.stefanobrivio.net>
References: <4ba6aa45.z5Wso1NMth9eMeFG%Larry.Finger@lwfinger.net>
	<4BAFF571.1090706@lwfinger.net> <20100329020631.14202.qmail@stuge.se>
	<201003282221.51174.gene.heskett@verizon.net>
	<4BB013C2.2080400@lwfinger.net>
	<20100329094416.125cf970@vaiolo.stefanobrivio.net>
Message-ID: <1269849625.29921.16474.camel@macbook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 2010-03-29 at 09:44 +0200, Stefano Brivio wrote:
> 
> Actually, I already disabled sending from berlios (I'll be shutting
> it down completely as soon as things have settled), so this shouldn't
> happen.
> 
> It looks like lists messages on infradead get sent from at least two
> different servers, anyway. In order not to be affected by this, I
> suggest filtering on the List-Id header instead. The matching value is
> "b43-dev.lists.infradead.org". 

They should only come from one server; currently bombadil.infradead.org
although it may change occasionally as I migrate services between
machines.

Filtering on List-Id: will give you false positives in some
circumstances (especially when people resend list messages to you
personally, which often happens to me on lists I don't pay much
attention to).

The best thing to filter on is the SMTP sender, which usually ends up in
a 'Return-Path' header. For the b43 list, that be something like
b43-dev-bounces+dwmw2=infradead.org at lists.infradead.org (with your own
email address, not mine).

In Exim's filter language, the correct check would be:

if "$sender_address" matches "b43-dev-bounces.*@lists.infradead.org" then
        save Maildir/.lists.b43/
endif

In procmail I think it's something like:

* ^Return-Path: b43-dev-bounces.*@lists.infradead.org
$MAILDIR/.lists.b43/

-- 
David Woodhouse                            Open Source Technology Centre
David.Woodhouse at intel.com                              Intel Corporation
