From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 22 Jun 2010 10:09:00 -0500
Subject: Problem with b43
In-Reply-To: <AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>
References: <AANLkTilLczfhdWgMfxN2eL5dVmml4KL4ndq0BMtgFfDG@mail.gmail.com>
	<4C046DA6.3020308@polymtl.ca>	<AANLkTinKC4wz1tcKcATNOPTrDcuVFyfV83RYYwQfjC9k@mail.gmail.com>
	<AANLkTimCtaUkpeFF0NIEzuSSWVIcMmbVMaSAVlBGhphD@mail.gmail.com>
	<AANLkTik_mkRNmY9FHIG91lq0oTzb2j3frfy0eqfCYNFT@mail.gmail.com>
	<AANLkTimpDoxIjIBVOPug5uLADaV5oX6RX8se9VC1x6Pd@mail.gmail.com>
	<AANLkTili3ExOipmXzdd9JMMMhiyc8KUZoND-3KaznevA@mail.gmail.com>
Message-ID: <4C20D20C.6000606@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/21/2010 06:22 PM, G?bor Stefanik wrote:
> 2010/6/22 Fabrizio Regalli <fabreg@gmail.com>:
>> Ok, I put "options b43 pio=0 qos=0" in /etc/modprobe.d/b43.conf
>> And now the message is changed:
>>
>>
>> ...
>> [  745.708045] b43-phy1: Loading firmware version 410.2160 (2007-05-26
>> 15:32:10)
>> [  745.724051] b43-phy1 debug: Chip initialized
>> [  745.724189] b43-phy1 debug: 32-bit DMA initialized
>> [  745.724198] b43-phy1 debug: QoS disabled
>> [  745.744374] b43-phy1 debug: Wireless interface started
>> [  745.768105] b43-phy1 debug: Adding Interface type 2
>> [  745.796352] ADDRCONF(NETDEV_UP): wlan0: link is not ready
>> [  748.160267] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
>> [  748.161313] wlan0: authenticated
>> [  748.161425] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
>> [  748.162831] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x431
>> status=0 aid=1)
>> [  748.162835] wlan0: associated
>> [  748.163348] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
>> [  748.168313] wlan0: deauthenticating from 00:18:4d:2e:85:4a by local
>> choice (reason=3)
>> [  748.168466] cfg80211: Calling CRDA to update world regulatory domain
>> [  749.496214] wlan0: authenticate with 00:18:4d:2e:85:4a (try 1)
>> [  749.497126] wlan0: authenticated
>> [  749.497240] wlan0: associate with 00:18:4d:2e:85:4a (try 1)
>> [  749.498655] wlan0: RX AssocResp from 00:18:4d:2e:85:4a (capab=0x431
>> status=0 aid=1)
>> [  749.498659] wlan0: associated
>> [  749.504316] wlan0: deauthenticating from 00:18:4d:2e:85:4a by local
>> choice (reason=3)
>> [  749.504523] cfg80211: Calling CRDA to update world regulatory domain
>>
>>
>> But unfortunately does not work.
>>
>> I can obtain just the ip address:
>>
>> # ifconfig wlan0 |grep inet
>>           inet addr:192.168.0.100
>>
>> but iwconfig show me there isn't any access point associeted:
>>
>> wlan0     IEEE 802.11bg  ESSID:off/any
>>           Mode:Managed  Frequency:2.472 GHz  Access Point: Not-Associated
>>           Tx-Power=20 dBm
>>           Retry  long limit:7   RTS thr:off   Fragment thr:off
>>           Encryption key:off
>>           Power Management:off
>>
>>
> 
> Did you shut down NetworkManager?
> 
> Also, why are you disabling QoS? Unless you are using OpenFWWF, QoS
> shouldn't need to be disabled.

I will describe some recent findings in a separate email; however, to use
the BCM4312 in PIO mode, you do need to disable QoS AND hardware
encryption. Add "nohwcrypt=1" to b43.conf and leave the "qos=0" in.

Larry
