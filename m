From: Christian Schaefer <schaefer@rostlab.org>
Date: Mon, 28 Mar 2011 14:29:35 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <AANLkTinkbFTQ+PHL=T7=ghiC3L6PgrdrhXeDpZw4JZyC@mail.gmail.com>
References: <4D8F022C.2050606@rostlab.org>	<AANLkTim5s4rKS2Khm-vpzcPM8mKAwRCtH1x=mmaqr=m9@mail.gmail.com>	<AANLkTi=oX+O9pkRqj1ByB_SZMt4w43a_z3bGOp9AeT2L@mail.gmail.com>	<4D904F84.60204@rostlab.org>
	<AANLkTinkbFTQ+PHL=T7=ghiC3L6PgrdrhXeDpZw4JZyC@mail.gmail.com>
Message-ID: <4D907F2F.4020801@rostlab.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/28/2011 01:42 PM, Rafa? Mi?ecki wrote:
>>> modprobe b43
>>> dmesg | grep b43
>>> dmesg | grep ssb
>> returns nothing. The modprobe however produces the following:
> Try brcm80211

This doesn't seem to be very fruitful either:

brcm80211: module is from the staging directory, the quality is unknown, 
you have been warned.

btw, uname -r gives:
2.6.38-7-generic

Perhaps support for the device is included in recent development kernels?

Thanks,
Chris

-- 
Dipl.-Bioinf. Christian Schaefer
Technical University Munich
Department for Bioinformatics / Rostlab
http://www.rostlab.org/~schaefer
http://gsish.tum.edu/
