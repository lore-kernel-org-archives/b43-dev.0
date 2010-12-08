From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 08 Dec 2010 09:15:30 -0600
Subject: b43 N PHY status report
In-Reply-To: <AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
Message-ID: <4CFFA112.7030800@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

Rafa?,

The N PHY driver is remarkably stable. So far, my link has been up for nearly 16
hours under normal conditions - I have not yet tried any stress tests. Other
than the PHY errors that you noted, my link has only reported 2 other unusual
events. I have had 3 "Deauthentication for reason 3" from which it recovered in
one try. Also logged are 9 instances of "RX: Packet size underrun (2)/Packet
dropped" events. Again, these caused no problems.

Larry
