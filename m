From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 8 Apr 2011 18:56:13 +0200
Subject: [RFC][PATCH] bcmai: introduce AI driver
In-Reply-To: <op.vtisojsk3ri7v4@arend-laptop>
References: <1302033463-1846-1-git-send-email-zajec5@gmail.com>
	<op.vtisojsk3ri7v4@arend-laptop>
Message-ID: <BANLkTin1yyow595tcYveB5fh8q3x+U_GOw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-arm-kernel@lists.infradead.org

2011/4/6 Arend van Spriel <arend@broadcom.com>:
> 3. Device identification
>
> The cores are identified by manufacturer, core id and revision in your
> patch. I would not use the revision because 4 out of 5 times a revision
> change does indicate a hardware change but no change in programming
> interface. The enumeration data does contain a more selective field
> indicating the core class (4 bits following the core identifier). I suggest
> to replace the revision field by this class field.

Could you say something more about *class*, please? For my BCM43224 it
seems to be 0x0. WIll check BCM4313 in a moment.

-- 
Rafa?
