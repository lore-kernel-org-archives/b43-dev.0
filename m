From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 25 Apr 2011 13:35:23 -0500
Subject: Dumping PCI read/writes
In-Reply-To: <BANLkTinAb4v+bGiFgLqFcdx_YpyiEVcgwQ@mail.gmail.com>
References: <BANLkTinAb4v+bGiFgLqFcdx_YpyiEVcgwQ@mail.gmail.com>
Message-ID: <4DB5BEEB.7060507@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/25/2011 01:13 PM, Rafa? Mi?ecki wrote:
> I've made b43 and wl dumps almost identical on Juan's HP machine. I
> still get DMA errors.
>
> Does anyone still have patch to enable dumping PCI operations?

The attached patch will log the reads and writes to the PCI config registers. Is 
it the one you wanted?

Larry
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: log_pciconfig
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110425/f221d7f9/attachment.ksh>
