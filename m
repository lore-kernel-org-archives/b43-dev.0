From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 31 Oct 2014 21:12:39 +0100
Subject: slow connection
In-Reply-To: <20141031190018.GA8295@fifteen>
References: <20141031190018.GA8295@fifteen>
Message-ID: <CACna6rw8JdXqikBp=VpALDR-xKGAgf32x5W7ktr2Cj1L+dgePw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 31 October 2014 20:00, Evgeniy Dushistov <dushistov@mail.ru> wrote:
> I used linux 3.16.3 and b43 driver with firmware version 784.2.
> $iwconfig
> wlp4s0    IEEE 802.11bg  ESSID:"some sid"
>           Mode:Managed  Frequency:2.437 GHz  Access Point: 60:A4:4C:F0:DF:80
>           Bit Rate=24 Mb/s   Tx-Power=20 dBm
>           Retry short limit:7   RTS thr:off   Fragment thr:off
>           Encryption key:off
>           Power Management:off
>           Link Quality=70/70  Signal level=-27 dBm
>           Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
>           Tx excessive retries:18981  Invalid misc:16901   Missed beacon:0
>
> $lspci -v
> 04:00.0 Network controller: Broadcom Corporation BCM4331 802.11a/b/g/n (rev 02)
>         Subsystem: Apple Inc. AirPort Extreme
>         Flags: bus master, fast devsel, latency 0, IRQ 17
>         Memory at c1900000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 3
>         Capabilities: [58] Vendor Specific Information: Len=78 <?>
>         Capabilities: [48] MSI: Enable- Count=1/1 Maskable- 64bit+
>         Capabilities: [d0] Express Endpoint, MSI 00
>         Capabilities: [100] Advanced Error Reporting
>         Capabilities: [13c] Virtual Channel
>         Capabilities: [160] Device Serial Number dc-cb-e9-ff-ff-16-28-cf
>         Capabilities: [16c] Power Budgeting <?>
>         Kernel driver in use: bcma-pci-bridge
>         Kernel modules: bcma
>
> to test speed I download file from wifi router with usb disk.
>
> Under linux I got:
> time curl  'ftp://192.168.1.1/somefile' -o res
>   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
>                                  Dload  Upload   Total   Spent    Left  Speed
> 100 2147M  100 2147M    0     0   403k      0  1:30:52  1:30:52 --:--:--  478k
>
> real    90m52.745s
> user    1m1.120s
> sys     1m22.670s
>
>
> On the same notebook, at the same place, but under Mac OS X I got:
> time curl 'ftp://192.168.1.1/somefile' -o res
>   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
>                                  Dload  Upload   Total   Spent    Left  Speed
> 100 2147M  100 2147M    0     0  8379k      0  0:04:22  0:04:22 --:--:-- 6801k
>
> real    4m22.479s
> user    0m9.149s
> sys     0m31.209s
>
> So it is 3.18 Mbit/s vs 71.57 MBit/s under the same conditions,
> and the only difference is OS.
>
> Any hints, how to speedup connection under linux?

We have some improvements for HT-PHY (BCM4331) in 3.18-rc1 (and
newer). Could you try it?

b43 is still limited to 802.11g speeds, but I hope it will be better
than 3.18 Mb/s.

-- 
Rafa?
