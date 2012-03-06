From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 6 Mar 2012 14:27:27 +0100
Subject: [RFC] bcma: replace ssb_sprom structure with bcma_sprom structure
In-Reply-To: <1331036818-9240-1-git-send-email-arend@broadcom.com>
References: <1331036818-9240-1-git-send-email-arend@broadcom.com>
Message-ID: <CACna6rx5_wds1gMA+9Yg4hMS1NCankwEqN3ixMUaktLAhw9ERw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: linux-wireless@vger.kernel.org, b43-dev-list <b43-dev@lists.infradead.org>

2012/3/6 Arend van Spriel <arend@broadcom.com>:
> BCMA shared a structure with SSB in which sprom data was stored. This
> could have been appropriate but with upcoming srom revisions that are
> of no interest to SSB it is better to have own definitions with BCMA.
>
> This patch adds support for srom revisions 8 and 9.

Does b43 even compile with that?

-- 
Rafa?
