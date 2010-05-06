From: Michael Buesch <mb@bu3sch.de>
Date: Fri, 7 May 2010 00:44:56 +0200
Subject: [RFC/RFT] ssb: resolve alternate SPROM offset for 14e4:4315
In-Reply-To: <4BE2C009.8020002@lwfinger.net>
References: <4be24cdd.Yg6pH2Z4OwSotB+K%Larry.Finger@lwfinger.net>
	<201005061201.18469.mb@bu3sch.de> <4BE2C009.8020002@lwfinger.net>
	(sfid-20100506_131150_090575_629A6A99)
Message-ID: <201005070044.56589.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Thursday 06 May 2010 15:11:37 Larry Finger wrote:
> Is it OK to read the chipcommon capabilities here?

Yeah. That register exists on all revisions.

Only add stuff to ssb_bus_scan that really _needs_ to be done that early.
Anything else should be done later.

-- 
Greetings, Michael.
