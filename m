From: William Bourque <william.bourque@polymtl.ca>
Date: Wed, 04 Aug 2010 12:08:53 -0400
Subject: b43 help,
In-Reply-To: <AANLkTi=jXTDadn_iDPxobV2=ks-tsGB2x8Gge3_8pS_V@mail.gmail.com>
References: <AANLkTimkV_LjgacMA6tR7Eaj=QpmXYJ2KwWYsuQFY-MV@mail.gmail.com>
	<AANLkTi=cbYrUsNJCdQG+UZ9DZNCo0d-BJ9zqsTW3iv89@mail.gmail.com>
	<AANLkTimYyzUE3_G+SrOyib=cBUj9GyrHT+eTAy2AUvXu@mail.gmail.com>
	<AANLkTi=jXTDadn_iDPxobV2=ks-tsGB2x8Gge3_8pS_V@mail.gmail.com>
Message-ID: <4C599095.2010007@polymtl.ca>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


Did you try the command Gabor gave you? ( "modprobe b43 nohwcrypt=1 
qos=0 pio=1" )

Assuming your kernel is recent enought, this should fix your problem.


On 03/08/10 11:02 PM, Cheng Renquan wrote:
> the other linux netbook with atheros wifi card can connect the hidden
> network, after connected it looks like:
>
> # iwconfig ath0
> Warning: Driver for device ath0 has been compiled with version 22
> of Wireless Extension, while this program supports up to version 20.
> Some things may be broken...
>
> ath0      IEEE 802.11g  ESSID:"WLAN-Staff"  Nickname:""
>            Mode:Managed  Frequency:2.462 GHz  Access Point: 00:13:19:8C:83:50
>            Bit Rate:54 Mb/s   Tx-Power:31 dBm   Sensitivity=1/3
>            Retry:off   RTS thr:off   Fragment thr:off
>            Encryption key:XXXX-XXXX-XXXX-XXXX-XXXX-XXXX-XX [4]
> Security mode:restricted
>            Power Management:off
>            Link Quality=94/94  Signal level=-1 dBm  Noise level=-95 dBm
>            Rx invalid nwid:2717842  Rx invalid crypt:0  Rx invalid frag:0
>            Tx excessive retries:0  Invalid misc:0   Missed beacon:0
>
> it has good link quality with "94/94", I've tried the same wpa
> configuration on the linux with b43, it is always scanning, with no
> results, and scanning; someone know how to make it work with this
> hidden and auth-required wifi?
>
> Thanks a lot,
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
