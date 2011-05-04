From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 May 2011 14:47:18 +0200
Subject: Question about IMCFGLO timeouts workaround
In-Reply-To: <BANLkTimyDunC7anVitk=wCNJg5XN4B239A@mail.gmail.com>
References: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
	<1304512532.32096.4.camel@maggie>
	<BANLkTimyDunC7anVitk=wCNJg5XN4B239A@mail.gmail.com>
Message-ID: <BANLkTimpbob5u+GNRKstE=mnfmkeo74ZDw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 4 maja 2011 14:45 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> 1) PCI (not e) cores rev < 5 need x32

This one is performed on PCI core


> 2) Some BCM4311 and BCM4312 need 0x03

This one is performed on 80211 core.


> This SSB_BUSTYPE_SSB with 0x53 is tricky for me and seems to be undocumented.

Not sure about this one. We currently perform this on 80211 core, but
this is in group with 0x32, which we were performing incorrectly on
80211 core.

-- 
Rafa?
