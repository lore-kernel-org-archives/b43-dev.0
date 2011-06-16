From: Oncaphillis <oncaphillis@snafu.de>
Date: Thu, 16 Jun 2011 23:23:25 +0200
Subject: Degradation on b43 14e4:4315 ?
In-Reply-To: <BANLkTinurxCysuDOFp7WMbC488hVAvBiag@mail.gmail.com>
References: <4DF9BBCE.10702@snafu.de>
	<BANLkTinurxCysuDOFp7WMbC488hVAvBiag@mail.gmail.com>
Message-ID: <4DFA744D.8060608@snafu.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/16/2011 11:22 AM, Rafa? Mi?ecki wrote:
> Hey,
>
> 2011/6/16 Oncaphillis<oncaphillis@snafu.de>:
>>   I'm using my b43 14e4:4315 on my acer notebook for quite a while now.
>> I've started to use a wireless git-kernel and helped a bit in debugging
>> initial problems with this device. Since the early Fedora 14 it seemed to
>> work out of the box, but now when Fedora 14 moved to 2.6.35.12+ kernels
>> I loose connections on heavy transfer.
>
> Do you get something interesting from "dmesg | grep b43"?
>

So I got a vanilla kernel 2.6.35.13 with the .config stolen from the
Fedora 14 kernel except that I disabled DNA. On startup dmesg tells
me:

<snip>
[   11.038578] b43-pci-bridge 0000:01:00.0: PCI INT A -> GSI 16 (level, 
low) -> IRQ 16
[   11.038643] b43-pci-bridge 0000:01:00.0: setting latency timer to 64
[   13.725758] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   13.740378] b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
[   13.740448] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, 
Revision 2
[   14.024423] Registered led device: b43-phy0::tx
[   14.024523] Registered led device: b43-phy0::rx
[   14.024613] Registered led device: b43-phy0::radio
[   25.399187] b43-phy0: Loading firmware version 478.104 (2008-07-01 
00:50:23)
[   25.401793] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[   25.479462] b43-phy0 debug: Chip initialized
[   25.479631] b43-phy0 debug: PIO initialized
[   25.479660] b43-phy0 debug: QoS disabled
[   25.487963] b43-phy0 debug: Wireless interface started
[   25.492355] b43-phy0 debug: Adding Interface type 2
</snip>


And the connection stays stable. But If I do some heavy file transfer
I loose connection and dmesg tells me:

<snip>
[ 7531.098190] cfg80211: Calling CRDA to update world regulatory domain
[ 7531.099543] cfg80211: Calling CRDA for country: DE
[ 7531.673634] cfg80211: Regulatory domain changed to country: DE
[ 7531.673642]     (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 7531.673650]     (2400000 KHz - 2483500 KHz @ 40000 KHz), (N/A, 2000 mBm)
[ 7531.673656]     (5150000 KHz - 5250000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[ 7531.673663]     (5250000 KHz - 5350000 KHz @ 40000 KHz), (N/A, 2000 mBm)
[ 7531.673669]     (5470000 KHz - 5725000 KHz @ 40000 KHz), (N/A, 2698 mBm)
[ 7532.279452] wlan0: authenticate with 00:25:9c:d0:04:fb (try 1)
[ 7532.479109] wlan0: authenticate with 00:25:9c:d0:04:fb (try 2)
[ 7532.679347] wlan0: authenticate with 00:25:9c:d0:04:fb (try 3)
[ 7532.879169] wlan0: authentication with 00:25:9c:d0:04:fb timed out
[ 7548.738780] wlan0: direct probe to 00:25:9c:d0:04:fb (try 1)
[ 7548.939078] wlan0: direct probe to 00:25:9c:d0:04:fb (try 2)
[ 7549.138181] wlan0: direct probe to 00:25:9c:d0:04:fb (try 3)
[ 7549.338067] wlan0: direct probe to 00:25:9c:d0:04:fb timed out
</snip>

No messages from the b43 module though. In order to reanimate wlan
I just have to kill wpa_supplicant and do dhclient startup. No
removal and reinsert of module necessary. May be I bark up the wrong
tree ? And it's wpa_supplicant that does it all wrong ?

>
>> Where there developments during the 2.6.35.x developments which could
>> explain such behaviour ?
>
> Do you mean 2.6.35 was working fine and 2.6.35.12 already contains
> regression? Were you using clean 2.6.35 earlier with success?

I started up with the wireless git-repo and somewhere since the early
Fedora 14 it worked for me with the fedora standard kernel. Throughput 
could have been better, but I never got such disconnections ever since. 
Actually I don't know if Fedora 14 started up with kernel 2.6.35 or even 
earlier.


>
> Did you/Fedora update firmware in /lib/firmware/b43 meanwhile?
>
