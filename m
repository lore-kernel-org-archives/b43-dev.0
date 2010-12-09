From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 9 Dec 2010 15:09:15 +0100
Subject: [PATCH 0/4] Make N-PHY support experimental
In-Reply-To: <AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>
Message-ID: <AANLkTimU1wJo1tDpa+g-_p1fgZqDeNHp5TPH-7Yghqe_@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?G=C3=A1bor_Stefanik?= <netrolller.3d@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 7 grudnia 2010 23:57 u?ytkownik G?bor Stefanik
<netrolller.3d@gmail.com> napisa?:
> 2010/12/7 Rafa? Mi?ecki <zajec5@gmail.com>:
>> Finally, thanks for Larry and Francesco I got b43 working with BCM4328 chipset!
>
> Do you mean BCM4321 (14e4:4328)? BCM4328 is AFAIK handled by brcmfmac.

Yeah, I removed following hack some time ago:
-       } else if (bus->chip_id == 0x4321) {
-               /* the BCM4328 has a chipid == 0x4321 and a rev 4 SPROM */
and got lost what is my chipset. You're right.


-- 
Rafa?
