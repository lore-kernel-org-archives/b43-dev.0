From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 07 Dec 2010 21:37:49 -0600
Subject: [PATCH 0/4] Make N-PHY support experimental
In-Reply-To: <AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
Message-ID: <4CFEFD8D.1080808@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?R8OhYm9yIFN0ZWZhbmlr?= <netrolller.3d@gmail.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

I have a bit more info regarding the problem with WPA2 encryption on an N PHY.
As shown in the NetworkManager log attached, Authentication is successful, but
DHCP fails. Either the transmit data is improperly encrypted, or the decryption
fails. I will use wireshark to sort that out. Note: Using software encryption
makes no difference.

Larry

-------------- next part --------------
A non-text attachment was scrubbed...
Name: nm.log
Type: text/x-log
Size: 19096 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101207/801beb3a/attachment.bin>
