From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Wed, 06 Jun 2012 10:49:30 +0200
Subject: BCM4318 problem on Kubuntu
In-Reply-To: <4FCED87C.6060801@lwfinger.net>
References: <315651.5469.14371-10360-1586159934-1338927105@seznam.cz>
 <4FCED87C.6060801@lwfinger.net>
Message-ID: <4FCF199A.7000702@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/06/2012 06:11 AM, Larry Finger wrote:
> On 06/05/2012 03:11 PM, Vaclav Peroutka wrote:
>> Hello,
>>
>> I updated my Kubuntu and I still have problems with BCM4318 driver.
>> Unfortunately I can not install any newer Ubuntu as my old notebook
>> Amilo 8010 always freezes during booting of the live CD.
>>
>> Can somebody know, what is wrong ?
>>
>> I have following system:
>> $ uname -a
>> Linux malamys-laptop 2.6.32-41-generic #89-Ubuntu SMP Fri Apr 27
>> 22:22:09 UTC 2012 i686 GNU/Linux
>>
>> $ lspci -vnn | grep 14e4
>> 06:04.0 Network controller [0280]: Broadcom Corporation BCM4318
>> [AirForce One 54g] 802.11g Wireless LAN Controller [14e4:4318] (rev 02)
>>
>> $ lsmod | grep b43
>> b43                   163556  0
>> mac80211              205434  1 b43
>> cfg80211              126528  2 b43,mac80211
>> ssb                    38934  1 b43
>> led_class               2864  2 b43,sdhci
>>
>> excerpt of /var/log/messages
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.708196] b43-phy0:
>> Broadcom 4318 WLAN found (core revision 9)
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.718799] input: SynPS/2
>> Synaptics TouchPad as /devices/platform/i8042/serio1/input/i
>> nput4
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.747484] type=1505
>> audit(1338928766.914:11):  operation="profile_load" pid=684 name=
>> "/usr/lib/cups/backend/cups-pdf"
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.755714] r8169: eth0:
>> link down
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.755990]
>> ADDRCONF(NETDEV_UP): eth0: link is not ready
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.808940] Bluetooth: L2CAP
>> ver 2.14
>> Jun  5 22:39:26 malamys-laptop kernel: [   28.808946] Bluetooth: L2CAP
>> socket layer initialized
>> Jun  5 22:39:27 malamys-laptop kernel: [   28.857917] Registered led
>> device: b43-phy0::tx
>> Jun  5 22:39:27 malamys-laptop kernel: [   28.857939] Registered led
>> device: b43-phy0::rx
>> Jun  5 22:39:27 malamys-laptop kernel: [   28.857959] Registered led
>> device: b43-phy0::radio
>> Jun  5 22:39:27 malamys-laptop kernel: [   28.858059] Broadcom 43xx
>> driver loaded [ Features: PL, Firmware-ID: FW13 ]
>> Jun  5 22:39:27 malamys-laptop kernel: [   28.930469] [drm]
>> initialized overlay support
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.129631] Bluetooth: BNEP
>> (Ethernet Emulation) ver 1.3
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.129636] Bluetooth: BNEP
>> filters: protocol multicast
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.152076] b43 ssb0:0:
>> firmware: requesting b43/ucode5.fw
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.182309] b43 ssb0:0:
>> firmware: requesting b43/pcm5.fw
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.190748] b43 ssb0:0:
>> firmware: requesting b43/b0g0initvals5.fw
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.196865] b43 ssb0:0:
>> firmware: requesting b43/b0g0bsinitvals5.fw
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.259129] pcmcia_socket
>> pcmcia_socket0: cs: IO port probe 0x100-0x3af: clean.
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.260864] pcmcia_socket
>> pcmcia_socket0: cs: IO port probe 0x3e0-0x4ff: excluding 0x4d
>> 0-0x4d7
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.261597] pcmcia_socket
>> pcmcia_socket0: cs: IO port probe 0x820-0x8ff: clean.
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.262202] pcmcia_socket
>> pcmcia_socket0: cs: IO port probe 0xc00-0xcf7: clean.
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.262980] pcmcia_socket
>> pcmcia_socket0: cs: IO port probe 0xa00-0xaff: clean.
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.435791] apm: BIOS not
>> found.
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.437416] Bridge
>> firewalling registered
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.476032] b43-phy0:
>> Loading firmware version 666.2 (2011-02-23 01:15:07)
> 
> I am not certain that this version of the firmware works with the 4318.
> You might try an older version.

Support for firmware >= 598 was added in 3.2, so you have to use an
older firmware or a more recent kernel or compat-wireless.

>> Jun  5 22:39:27 malamys-laptop kernel: [   29.520939]
>> ADDRCONF(NETDEV_UP): wlan0: link is not ready
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.670392] Bluetooth: SCO
>> (Voice Link) ver 0.6
>> Jun  5 22:39:27 malamys-laptop kernel: [   29.670396] Bluetooth: SCO
>> socket layer initialized
>>
>> then in dmesg I have a plenty of following:
>> [  118.012839] ------------[ cut here ]------------
>> [  118.012854] WARNING: at
>> /build/buildd/linux-2.6.32/net/mac80211/rx.c:2482
>> ieee80211_rx+0x133/0x160 [mac80211]()
>> [  118.012857] Hardware name: AMILO PRO V8010
> 
> My system is too new to tell exactly what causes this error; however, I
> think it comes from the wireless band not being set up correctly. Do you
> have CRDA installed? I do not see any evidence of it in the dmesg output
> that you posted.
> 
> Larry
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
