From: Antonio Messina <arcimboldo@gmail.com>
Date: Thu, 26 Jan 2012 23:53:14 +0100
Subject: b43 module doesn't work after suspend
Message-ID: <4F21D95A.4060408@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

After suspend to ram my wifi doesn't work. Unloading the `b43' module 
and re-loading after resume "fix" the issue, but it would be better if 
it will deal with the suspend/resume cycle smoothly.

My card (MacBookpro8,1):
03:00.0 Network controller: Broadcom Corporation BCM4331 802.11a/b/g/n 
(rev 02)

Kernel: 3.2.1 vanilla x86_64
Distro: Debian testing
b43 firmware: 666.2 (2011-02-23 01:15:07)

.a.
