From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 24 Nov 2011 07:35:23 +0100
Subject: BCM4312 LP-PHY DMA issues
In-Reply-To: <20111122174521.GE6004@datacomm.albany.edu>
References: <20111122000059.GB6004@datacomm.albany.edu>
 <20111122161313.GA11018@nautica>
 <20111122174521.GE6004@datacomm.albany.edu>
Message-ID: <CACna6rw6SnLo=M=NKPzv_yb665aj6WCoR8VBNA9goS9otQB8Lw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/11/22 Justin Azoff <JAzoff@albany.edu>:
> On Tue, Nov 22, 2011 at 05:13:13PM +0100, Dominique Martinet wrote:
>> Hi,
>>
>> Is the dmesg output the one without pio=1?
>> It says:
>> [ ? 28.236344] b43-phy0: Loading firmware version 478.104 (2008-07-01
>> 00:50:23)
>> [ ? 33.772580] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000,
>> 0x00000000, 0x00000000, 0x00000000, 0x00000000
>> [ ? 33.778855] b43-phy0 ERROR: This device does not support DMA on your
>> system. It will now be switched to PIO.
>> [ ? 33.784685] b43-phy0: Controller RESET (DMA error) ...
>>
>> so I would suppose it fell back to pio=1 and missed something during the
>> initialization (assuming it works when you modprobe it with pio=1
>> directly)
>
> That is correct:
>
> ?* with pio=1 it works
> ?* without pio=0 you get the above message, but then it is never able to connect.
>
>> That being said, it is supposed to work on linux >= 3.0, so I'd try with
>> a more recent firmware just to see if it helps.
>> (cf. http://linuxwireless.org/en/users/Drivers/b43?highlight=%28b43%29#List_of_firmware
>> )
>
> Ah, I didn't even think to upgrade the firmware.. the debian package
> that installs the firmware grabs this url:
> http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2
>
> which appears to be a few versions behind. I'm installed
> broadcom-wl-5.10.56.27.3_mipsel.tar.bz2 and am testing kernels now.
>
> 3.1.0-1-686-pae with the new firmware seems to be working :-)
>
> It went from
>
> 2011-11-22 12:24:23 check=DL ok=True download_time=26.44 timeout=False min_speed=544 avg_speed=774 max_speed=888
>
> to
>
> 2011-11-22 12:42:16 check=DL ok=True download_time=11.75 timeout=False min_speed=1376 avg_speed=1743 max_speed=1976
>
> and CPU usage is only 15% now.

Huh, that sound interesting. So updating firmware fixed DMA issues for
you, right? Are you really sure you're using DMA?

I didn't think Broadcom could fix something about DMA errors
(timeouts?) of LP-PHY in the recent firmware.

Is this still working fine for you? After that ~2 days?

-- 
Rafa?
