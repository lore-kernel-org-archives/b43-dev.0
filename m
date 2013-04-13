From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 13 Apr 2013 02:14:25 +0200
Subject: [PATCH v3] b43: use bcma_pmu_spuravoid_pllupdate()
In-Reply-To: <1365779338-8224-1-git-send-email-hauke@hauke-m.de>
References: <1365779338-8224-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6ry+2jpgSKKR4VFE58JV1ezXmmSaJe2eZzOuOxh2sSet1g@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linville@tuxdriver.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

2013/4/12 Hauke Mehrtens <hauke@hauke-m.de>:
> Do not implement this in b43, but use bcma_pmu_spuravoid_pllupdate().

John: I've applied this patch to my git tree, so according to your
preferences you may just drop it and take a look at:
pull request: b43-next 2013-04-13
I've just send.

-- 
Rafa?
