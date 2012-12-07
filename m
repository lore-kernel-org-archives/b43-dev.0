From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 7 Dec 2012 14:17:02 +0100
Subject: [PATCH] b43-fwcutter: pack correct ucode for brcmsmac fw
In-Reply-To: <1354830298-4160-1-git-send-email-hauke@hauke-m.de>
References: <1354830298-4160-1-git-send-email-hauke@hauke-m.de>
Message-ID: <20121207141702.4313db7e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu,  6 Dec 2012 22:44:58 +0100
Hauke Mehrtens <hauke@hauke-m.de> wrote:

> brcmsmac supports only lcn-phy core with core rev 24 and no n-phy cores
> with core rev 24, so pack the correct ucode image into the firmware
> package.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Thanks, applied.

Should a new version be released?

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20121207/15797c10/attachment.sig>
