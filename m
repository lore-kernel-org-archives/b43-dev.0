From: David Woodhouse <dwmw2@infradead.org>
Date: Mon, 22 Aug 2011 15:50:55 +0100
Subject: [QUESTION] 4331 support
In-Reply-To: <4E526BE6.3020504@lwfinger.net>
References: <CACBz148HiqaUWqxNOddxhTH5qYUKTg6Gk6gk7W2Mb_t7jRX=nQ@mail.gmail.com>
	<1314023603.21805.75.camel@shinybook.infradead.org>
	<4E526BE6.3020504@lwfinger.net>
Message-ID: <1314024656.21805.79.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 2011-08-22 at 09:47 -0500, Larry Finger wrote:
> To expand a little on what David wrote, the tree at wireless-testing is ahead of 
> linux-next, and the published patches are even ahead of wireless-testing. The 
> situation is changing rapidly, but 4331 support is quite near. 

That's the way it's currently managed, yes. But in fact a 'b43' git tree
wouldn't need to be based on wireless-testing most of the time, and
certainly wouldn't need to be based on linux-next.

It should be possible for it to be based on the latest release from
Linus.

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 5818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110822/de4f0ef0/attachment-0001.bin>
