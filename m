From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Aug 2011 13:45:48 +0200
Subject: [[PATCH V3] b43-fwcutter: Add 5 new drivers to cut list
In-Reply-To: <4e508757.pJnRosCnB3soGLZC%Larry.Finger@lwfinger.net>
References: <4e508757.pJnRosCnB3soGLZC%Larry.Finger@lwfinger.net>
Message-ID: <20110821134548.5d3ba650@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 20 Aug 2011 23:19:35 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> The following changes are made to fwcutter:
> 
> 1. The two drivers whose donload is greater than 300 MB are eliminated.
> 2. Five new sources now posted at www.lwfinger.com are added.
> 3. The version is upgraded from 14 to 15.
> 
> Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
> ---
> 
> V2 - The FWxx entity is now sequential.
> V3 - Fix compilation error - patch was not refreshed.

Ok, thanks. I'll apply that.
However, I thought about all that and I think I will
remove the firmware-id. It's not really useful today anymore,
due to the vast amount of different firmware types that could
even be installed in parallel to work on different PHYs.
The ID was supposed to match a particular driver version to its
correct set of firmware files. However, the driver side ID doesn't
seem to be updated and maintained anymore, so I'll just remove it.

-- 
Greetings, Michael.
