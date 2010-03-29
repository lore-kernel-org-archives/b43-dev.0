From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 28 Mar 2010 19:33:53 -0500
Subject: [PATCH V2] ssb: Implement virtual SPROM on disk
In-Reply-To: <4BAFA83B.8050505@free.fr>
References: <4ba6aa45.z5Wso1NMth9eMeFG%Larry.Finger@lwfinger.net>	<1269377903.21181.8.camel@nayuki>
	<4BAA1EA3.9060803@lwfinger.net>	<201003242021.39502.mb@bu3sch.de>
	<4BAC2E36.8000900@lwfinger.net> <4BAF8E62.4060902@free.fr>
	<4BAF9F11.6050802@lwfinger.net> <4BAFA83B.8050505@free.fr>
Message-ID: <4BAFF571.1090706@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Nicolas_de_Peslo=FCan?= <nicolas.2p.debian@free.fr>
Cc: Michael Buesch <mb@bu3sch.de>, Calvin Walton <calvin.walton@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 03/28/2010 02:04 PM, Nicolas de Peslo?an wrote:
> Larry Finger wrote:
>> On 03/28/2010 12:14 PM, Nicolas de Peslo?an wrote:
>>> Larry Finger wrote:
>>> MACADDRESS=$(/bin/dd if=/dev/random bs=1 count=6 2>/dev/null |
>>> /usr/bin/od -tx1 |
>>>   sed -ne '1{;s/0000000 //;s/^\(.\)[014589cd]/\12/;y/ /:/;p}'
>>
>> It also needs to be even as an odd value would be a broadcast address.
>> Using
>> only sed instead of head|cut|awk does have merit and the randomness is
>> increased
>> by 6 bits. It will take me a while to understand the sed here. Regular
>> expressions are not my thing.
> 
> Yes, you are right, so I need to change a few things, in order to keep
> the highest possible level of randomness while ensuring the lower half
> of first byte is 2, 6, a or e.
> 
> dd if=/dev/random bs=1 count=6 2>/dev/null |
> od -tx1 |
> sed -ne '1{;s/0000000 //;
> s/^\(.\)[013]/\12/;s/^\(.\)[457]/\16/;
> s/^\(.\)[89b]/\1a/;s/^\(.\)[cdf]/\1e/;
> y/ /:/;p}'
> 
> Translation to humain form :
> 
> # for the first line only,
> #     If second char is 0, 1 or 3, replace it with 2.
> #    If second char is 4, 5 or 7, replace it with 6.
> #    If second char is 8, 9 or b, replace it with a.
> #    If second char is c, d or f, replace it with e.
> #    Replace all spaces with ':'.
> #    print
> # Print nothing for other lines, thanks to -n option.

That is a lot of work for 2 extra bits, but thanks. I had changed the [014589cd]
of your original with [01345789bcdf], which resulted in X2 as the first byte for
most generated addresses.

>>> If DEVPATH is "generic" (wlan*), how would you distinguish between two
>>> broadcom NIC present in the system, both without an SPROM ?
>>
>> That is covered by the
>> /devices/pci0000:00/0000:00:0d.0/0000:04:00.0/... part of
> 
> Ok, sounds good for me. Did you had the opportunity to test with two
> such devices ?

Yes. On a machine where I have two PCI versions of BCM43XX devices, one is
...00:08.0/... and the other is ...00:0a.0/... The generated rules are

SUBSYSTEM=="net", DEVPATH=="/devices/pci0000:00/0000:00:08.0/ssb0:0/net/wlan*",
ATTR{address}=="82:82:82:82:82:82", ENV{MAC_CHANGED}="yes", RUN+="/sbin/ifconfig
$env{INTERFACE} hw ether c2:e7:d3:d8:73:a8"
SUBSYSTEM=="net", DEVPATH=="/devices/pci0000:00/0000:00:0a.0/ssb1:0/net/wlan*",
ATTR{address}=="82:82:82:82:82:82", ENV{MAC_CHANGED}="yes", RUN+="/sbin/ifconfig
$env{INTERFACE} hw ether 02:56:31:dd:7f:85"

Incidentally, I tried ip rather than ifconfig, and found that the MAC address
was never changed.

Larry
