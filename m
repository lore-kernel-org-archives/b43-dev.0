From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 11 Oct 2010 18:36:30 +0200
Subject: [PATCH 3/3] b43: N-PHY: add 2055 radio regs
In-Reply-To: <AANLkTik1JPNaDKrS8ST_Lt+iEg21-rcetVTSnYmx-qW3@mail.gmail.com>
References: <1286810435-10820-1-git-send-email-zajec5@gmail.com>
	<1286810435-10820-3-git-send-email-zajec5@gmail.com>
	<AANLkTik1JPNaDKrS8ST_Lt+iEg21-rcetVTSnYmx-qW3@mail.gmail.com>
Message-ID: <AANLkTingK+o8viDgMdV+jq7kLduda_W=cFr_n08g4V1L@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 11 pa?dziernika 2010 18:24 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
> Doesn't brcm80211 contain register names for B2055?

Whoops... first of all it's 2056 radio. Commit's message should be
2056, not 2055.

Yes, I'm sure we can grab many defines from brcm80211. However before
copying their code/defines I wanted to finish implementing what we
have in our RE specs. Is that acceptable? Or should I use brcm80211's
names if I already touch such places?

-- 
Rafa?
