From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Tue, 17 Aug 2010 08:37:51 +0200
Subject: [PATCH 4/4] b43: N-PHY: Implement RX core state setting for rev.2
	and earlier PHYs
In-Reply-To: <4C69A3E4.1080807@bu3sch.de>
References: <1281991157-1557-1-git-send-email-netrolller.3d@gmail.com>
	<1281991157-1557-2-git-send-email-netrolller.3d@gmail.com>
	<1281991157-1557-3-git-send-email-netrolller.3d@gmail.com>
	<1281991157-1557-4-git-send-email-netrolller.3d@gmail.com>
	<4C69A3E4.1080807@bu3sch.de>
Message-ID: <AANLkTik-q-UsU8AyvoQ+ci2RFUk9=4kfiPZLmb7pg4jG@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Cc: John Linville <linville@tuxdriver.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <larry.finger@lwfinger.net>, =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>

On Mon, Aug 16, 2010 at 10:47 PM, Michael B?sch <mb@bu3sch.de> wrote:
> On 08/16/2010 10:39 PM, G?bor Stefanik wrote:
>>
>> +static void b43_nphy_set_rx_core_state(struct b43_wldev *dev, u8 mask)
>> +{
>> + ? ? ? struct b43_phy *phy =&dev->phy;
>> + ? ? ? struct b43_phy_n *nphy = phy->n;
>> + ? ? ? u16 buf[16];
>
>> + ? ? ? if (maskbits& ?0x3 != 0x3) {
>
> Does this even compile? I don't see maskbits being defined.

Typo, should be just "mask" (without "bits").

>
> --
> Greetings Michael.
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
