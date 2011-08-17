From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 17 Aug 2011 18:36:40 +0200
Subject: ~3.1-rc1 mac80211 =?UTF-8?Q?regression=3F=20NULL=20pointer=20?=
	=?UTF-8?Q?dereference=2C=20memcpy=2C=20nla=5Fput?=
In-Reply-To: <CACna6rzdoAgoW8B11bpdqNAi1Gz2T6AV4g-m5WGz9X0izhCDOQ@mail.gmail.com>
	(sfid-20110817_181438_086831_98729AB8)
References: <CACna6rzdoAgoW8B11bpdqNAi1Gz2T6AV4g-m5WGz9X0izhCDOQ@mail.gmail.com>
	(sfid-20110817_181438_086831_98729AB8)
Message-ID: <599203fe1d78132e3855f9626db7817b@secure.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On Wed, 17 Aug 2011 18:14:32 +0200, Rafa? Mi?ecki wrote:
> I've problem with my BCM43224 and BCM43225 cards. They stopped to 
> work
> around 3.1-rc1 and I suspect it's mac80211 regression.

Already fixed in wireless-testing, but I don't remember the patch 
title.

johannes
