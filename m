From: Paul Bolle <pebolle@tiscali.nl>
Date: Tue, 10 Jun 2014 13:21:02 +0200
Subject: b43: B43_BCMA_AND_SSB?
Message-ID: <1402399262.3798.16.camel@x220>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

Rafa?, John,

0) linux-next includes your commit fbe057d8a185 ("b43: drop SSB
dependency"). It was first included in next-20140514. It added this
default for the (new) choice "Supported bus types":
    default B43_BCMA_AND_SSB

1) That symbol doesn't exist. It seems this line should have read:
    default B43_BUSES_BCMA_AND_SSB

(No one noticed because a choice with a bogus default will, apparently,
default to its first entry, which happened to be
B43_BUSES_BCMA_AND_SSB.)

2) Is the (trivial) patch to fix that typo queued somewhere?


Paul Bolle
