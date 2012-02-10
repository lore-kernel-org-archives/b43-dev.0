From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 10 Feb 2012 07:13:08 +0100
Subject: Wireless Problem
In-Reply-To: <4F3432DE.9050105@cfl.rr.com>
References: <4F3417B6.4060005@cfl.rr.com>
 <CACna6rxanokAjM4Jy-7C9SFk89Bepn6p3+GM0kduLxaP0y37GQ@mail.gmail.com>
 <4F34209E.5090704@broadcom.com> <4F3432DE.9050105@cfl.rr.com>
Message-ID: <CACna6ryyHPa6e9C4xR=uhkfO+q9+FFTzjtWy1G8qcOZGoVAoPw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 9 lutego 2012 21:55 u?ytkownik Vince Radice
<vhradice@cfl.rr.com> napisa?:
> ? ?As for my question about b43-fwcutter, do I do something with this or is
> it done behind the scenes by a driver?

No idea what are you asking about. What do you mean by "I do
something"? What are you trying to achieve?
b43 driver won't work this this card. b43-fwcutter is firmware
extractor for b43 driver. It's not needed for this card.


> ? ?Also, some have had success with the STA drivers. ?I believe that I have
> installed them with yum. ?How can I tell if they are being used? ?Can I
> somehow tie those drivers with my usb adapter?

I don't think STA supports fullmac devices (like your USB one). You
can list loaded modules by "lsmod"
hint:
lsmod | grep wl
lsmod | grep b43
etc.

lspci also shows currently used driver when using verbose mode (lspci -v):
06:00.0 Network controller: Intel Corporation WiFi Link 5100
        Subsystem: Intel Corporation WiFi Link 5100 AGN
        Flags: bus master, fast devsel, latency 0, IRQ 48
        Memory at d1500000 (64-bit, non-prefetchable) [size=8K]
        (...)
        Kernel driver in use: iwlwifi

P.S.
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

Please, bottom-post.

-- 
Rafa?
