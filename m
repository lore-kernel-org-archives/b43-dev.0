From: Christian Schaefer <schaefer@rostlab.org>
Date: Mon, 28 Mar 2011 11:06:12 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <AANLkTi=oX+O9pkRqj1ByB_SZMt4w43a_z3bGOp9AeT2L@mail.gmail.com>
References: <4D8F022C.2050606@rostlab.org>	<AANLkTim5s4rKS2Khm-vpzcPM8mKAwRCtH1x=mmaqr=m9@mail.gmail.com>
	<AANLkTi=oX+O9pkRqj1ByB_SZMt4w43a_z3bGOp9AeT2L@mail.gmail.com>
Message-ID: <4D904F84.60204@rostlab.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

>>> I've got here a recent 13" MacBook Pro (8,1), running Ubuntu on it (natty).
>>> The wireless device seems to be currently unsupported by the b43 driver (as
>>> of kernel 2.6.38). It seems to be a bcm4331, lspci -vn gives the following:
[...]
>>> To my current knowledge, the only way to get it working is by means of
>>> ndiswrapper. Are there any plans already to get this device supported
>>> natively? Please let me know if you need further information regarding the
>>> device.
>> What about
>> modprobe b43
>> dmesg | grep b43
> Please, provide also dmesg | grep ssb.
> This can be AI card, not ssb.

modprobe b43
dmesg | grep b43
dmesg | grep ssb

returns nothing. The modprobe however produces the following:

  cfg80211: Calling CRDA to update world regulatory domain
  cfg80211: World regulatory domain updated:
  cfg80211:     (start_freq - end_freq @ bandwidth), (max_antenna_gain, 
max_eirp)
  cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
  cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
  cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
  cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
  cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
  Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]

Chris

-- 
Dipl.-Bioinf. Christian Schaefer
Technical University Munich
Department for Bioinformatics / Rostlab
http://www.rostlab.org/~schaefer
http://gsish.tum.edu/
