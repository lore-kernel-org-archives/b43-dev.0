From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 11 Apr 2011 23:19:13 +0200
Subject: [RFC][PATCH V3] axi: add AXI bus driver
In-Reply-To: <20110411210631.GA28559@kroah.com>
References: <1302557114-7880-1-git-send-email-zajec5@gmail.com>
	<20110411210631.GA28559@kroah.com>
Message-ID: <BANLkTim155YxMUVJ=pmVs-rNhkovGPG6OQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-arm-kernel@lists.infradead.org

2011/4/11 Greg KH <greg@kroah.com>:
> On Mon, Apr 11, 2011 at 11:25:14PM +0200, Rafa? Mi?ecki wrote:
>> +static void axi_release_core_dev(struct device *dev)
>> +{
>> + ? ? /* Silent lack-of-release warning */
>> +}
>
> Ok, WTF!!!!

Thank you for your kindly words. It's much more enjoyable to work on
kernel that way. I definitely made that on purpose.

-- 
Rafa?
