From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Tue, 22 Jun 2010 01:22:55 +0200
Subject: Problem with b43
In-Reply-To: <AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>
References: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com> 
	<4C046DA6.3020308@polymtl.ca>
	<AANLkTinKC4wz1tcKcATNOPTrDcuVFyfV83RYYwQfjC9k@mail.gmail.com> 
	<AANLkTimCtaUkpeFF0NIEzuSSWVIcMmbVMaSAVlBGhphD@mail.gmail.com> 
	<AANLkTik_mkRNmY9FHIG91lq0oTzb2j3frfy0eqfCYNFT@mail.gmail.com> 
	<AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>
Message-ID: <AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/22 Fabrizio Regalli <fabreg@gmail.com>:
> Ok, I put "options b43 pio=0 qos=0" in /etc/modprobe.d/b43.conf
> And now the message is changed:
>
>
> ...
> [? 745.708045] b43-phy1: Loading firmware version 410.2160 (2007-05-26
> 15:32:10)
> [? 745.724051] b43-phy1 debug: Chip initialized
> [? 745.724189] b43-phy1 debug: 32-bit DMA initialized
> [? 745.724198] b43-phy1 debug: QoS disabled
> [? 745.744374] b43-phy1 debug: Wireless interface started
> [? 745.768105] b43-phy1 debug: Adding Interface type 2
> [? 745.796352] ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [? 748.160267] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
> [? 748.161313] wlan0: authenticated
> [? 748.161425] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
> [? 748.162831] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x431
> status=0 aid=1)
> [? 748.162835] wlan0: associated
> [? 748.163348] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
> [? 748.168313] wlan0: deauthenticating from 00:18:4d:2e:85:4a by local
> choice (reason=3)
> [? 748.168466] cfg80211: Calling CRDA to update world regulatory domain
> [? 749.496214] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
> [? 749.497126] wlan0: authenticated
> [? 749.497240] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
> [? 749.498655] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x431
> status=0 aid=1)
> [? 749.498659] wlan0: associated
> [? 749.504316] wlan0: deauthenticating from 00:18:4d:2e:85:4a by local
> choice (reason=3)
> [? 749.504523] cfg80211: Calling CRDA to update world regulatory domain
>
>
> But unfortunately does not work.
>
> I can obtain just the ip address:
>
> # ifconfig wlan0 |grep inet
> ????????? inet addr:192.168.0.100
>
> but iwconfig show me there isn't any access point associeted:
>
> wlan0???? IEEE 802.11bg? ESSID:off/any
> ????????? Mode:Managed? Frequency:2.472 GHz? Access Point: Not-Associated
> ????????? Tx-Power=20 dBm
> ????????? Retry? long limit:7?? RTS thr:off?? Fragment thr:off
> ????????? Encryption key:off
> ????????? Power Management:off
>
>

Did you shut down NetworkManager?

Also, why are you disabling QoS? Unless you are using OpenFWWF, QoS
shouldn't need to be disabled.

(BTW, please always CC the list / use Reply to All. Otherwise others
on the list can't follow this thread.)

> Thanks again.
>
>
> 2010/6/20 G?bor Stefanik <netrolller.3d@gmail.com>
>>
>> On Sun, Jun 20, 2010 at 2:04 PM, Fabrizio Regalli <fabreg@gmail.com>
>> wrote:
>> > I'm trying with an oldest firmware revision but unfortunately, nothing
>> > changed.
>> >
>> > debiancasa:/home/rizla# dmesg |grep b43
>> > [??? 2.054445] b43-pci-bridge 0000:04:05.0: PCI INT A -> GSI 17 (level,
>> > low)
>> > -> IRQ 17
>> > [??? 8.338798] b43-phy0: Broadcom 4318 WLAN found (core revision 9)
>> > [??? 8.380033] b43-phy0 debug: Found PHY: Analog 3, Type 2, Revision 7
>> > [??? 8.380054] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050,
>> > Revision 8
>> > [??? 8.577430] Registered led device: b43-phy0::tx
>> > [??? 8.577443] Registered led device: b43-phy0::rx
>> > [??? 8.577455] Registered led device: b43-phy0::assoc
>> > [??? 8.577470] Registered led device: b43-phy0::radio
>> > [?? 10.844287] b43 ssb0:0: firmware: requesting b43/ucode5.fw
>> > [?? 10.924217] b43 ssb0:0: firmware: requesting b43/pcm5.fw
>> > [?? 10.940552] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
>> > [?? 10.966269] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
>> > [?? 11.084276] b43-phy0: Loading firmware version 410.2160 (2007-05-26
>> > 15:32:10)
>> > [?? 11.104055] b43-phy0 debug: Chip initialized
>> > [?? 11.104096] b43-phy0 debug: PIO initialized
>>
>> Why are you using PIO for a BCM4318? AFAIK the DMA bug only affects
>> BCM4312.
>>
>> > [?? 11.104106] b43-phy0 debug: QoS disabled
>> > [?? 11.124366] b43-phy0 debug: Wireless interface started
>> > [?? 11.148853] b43-phy0 debug: Adding Interface type 2
>> > [? 660.376274] b43-phy0 debug: Removing Interface type 2
>> > [? 660.376359] b43-phy0 debug: Wireless interface stopped
>> > [? 667.296079] b43-phy0: Loading firmware version 410.2160 (2007-05-26
>> > 15:32:10)
>> > [? 667.312082] b43-phy0 debug: Chip initialized
>> > [? 667.312122] b43-phy0 debug: PIO initialized
>> > [? 667.312132] b43-phy0 debug: QoS disabled
>> > [? 667.333144] b43-phy0 debug: Wireless interface started
>> > [? 667.356357] b43-phy0 debug: Adding Interface type 2
>> > [? 667.472274] b43-phy0 debug: Removing Interface type 2
>> > [? 667.472356] b43-phy0 debug: Wireless interface stopped
>> > [? 669.584280] b43-phy0: Loading firmware version 410.2160 (2007-05-26
>> > 15:32:10)
>> > [? 669.600093] b43-phy0 debug: Chip initialized
>> > [? 669.600134] b43-phy0 debug: PIO initialized
>> > [? 669.600143] b43-phy0 debug: QoS disabled
>> > [? 669.620645] b43-phy0 debug: Wireless interface started
>> > [? 669.644096] b43-phy0 debug: Adding Interface type 2
>> >
>> > and in /var/log/messages a lot of this messages:
>> >
>> > [ 1022.268919] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x431
>> > status=0 aid=1)
>> > [ 1022.268923] wlan0: associated
>> > [ 1022.269690] wlan0: deauthenticating from 00:18:4d:2e:85:4a by local
>> > choice (reason=3)
>> > [ 1022.269826] cfg80211: Calling CRDA to update world regulatory domain
>> > [ 1023.600719] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
>> > [ 1023.664562] wlan0: authenticated
>> > [ 1023.664687] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
>> > [ 1023.864521] wlan0: associate with 00:18:4d:2e:85:4a (try 2)
>> > [ 1024.064534] wlan0: associate with 00:18:4d:2e:85:4a (try 3)
>> > [ 1024.264024] wlan0: association with 00:18:4d:2e:85:4a timed out
>> > [ 1034.841535] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
>> > [ 1035.040024] wlan0: authenticate with 00:18:4d:2e:85:4a (try 2)
>> > [ 1035.240023] wlan0: authenticate with 00:18:4d:2e:85:4a (try 3)
>> > [ 1035.440035] wlan0: authentication with 00:18:4d:2e:85:4a timed out
>> >
>> >
>> >
>> >
>> >
>> > 2010/6/1 Martino Salvetti <the9ull@silix.org>
>> >>
>> >> Also me... I sent a message about this problem but it was blocked.
>> >> I have this problem olny with multi-AP networks, in dmesg I can see
>> >> that
>> >> it continue to changes the AP until they ends to responds. (At my home,
>> >> with
>> >> a digicom ADSL router, the wifi works)
>> >> Martino
>> >>
>> >> 2010/6/1 William Bourque <william.bourque@polymtl.ca>
>> >>>
>> >>> Just saying, I have a similar problem... I tried to post twice about
>> >>> it
>> >>> on the list since 2 weeks but the mails keep getting moderated (and
>> >>> never unmoderated) because of "suspicious content".
>> >>>
>> >>> - William
>> >>>
>> >>> _______________________________________________
>> >>> b43-dev mailing list
>> >>> b43-dev at lists.infradead.org
>> >>> http://lists.infradead.org/mailman/listinfo/b43-dev
>> >>
>> >>
>> >>
>> >> --
>> >> Remember: with great power comes great current squared times
>> >> resistance.
>> >>
>> >> _______________________________________________
>> >> b43-dev mailing list
>> >> b43-dev at lists.infradead.org
>> >> http://lists.infradead.org/mailman/listinfo/b43-dev
>> >>
>> >
>> >
>> > _______________________________________________
>> > b43-dev mailing list
>> > b43-dev at lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/b43-dev
>> >
>> >
>>
>>
>>
>> --
>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
