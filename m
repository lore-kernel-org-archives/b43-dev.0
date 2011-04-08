From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 9 Apr 2011 01:46:29 +0200
Subject: [RFC][WAS:bcmai][PATCH V2] axi: add AXI bus driver
In-Reply-To: <20110408220157.GC26019@kroah.com>
References: <1302291900-1902-1-git-send-email-zajec5@gmail.com>
	<20110408220157.GC26019@kroah.com>
Message-ID: <BANLkTin_-hhcexTd67HviTqM4bjXMZxweA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-arm-kernel@lists.infradead.org

2011/4/9 Greg KH <greg@kroah.com>:
>> +static void axi_release_core_dev(struct device *dev)
>> +{
>> + ? ? kfree(dev);
>> +}
>
> This is wrong, unless you are really only creating a 'struct device'.
> Why are you doing that instead of embedding struct device in your
> structure?

Hm, I think Greg found explanation why we can not reload axi driver
successfully :)

I'll take care of your comment after weekend, thank you everybody.

-- 
Rafa?
