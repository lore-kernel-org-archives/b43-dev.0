From: Hamilton Vera <hamilton.listas@gmail.com>
Date: Tue, 26 Jul 2011 13:03:42 -0300
Subject: BCM4329 running ok in Android and fails in debian
In-Reply-To: <BANLkTi=P_ZF38DXMMR=kbE7jL3JgBRj3JA@mail.gmail.com>
References: <BANLkTi=P_ZF38DXMMR=kbE7jL3JgBRj3JA@mail.gmail.com>
Message-ID: <CAJ7S3qbDB+p75XRHwwCWxBPkAVqqFu8MxMMDmdbXwD3GEabtvw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Greetings masters

Actually we are working on an Android tablet (ARM iMX51 ) running
kernel 2.6.35.3 and froyo. BCM4329 works just fine in Android.

I am trying to port a Debian  to this board  and for some unknown
reason the same BCM4329 does not work properly in Debian.

I am using the same module bcm4329.ko and firmware that used to work in Android.

In Debian I am able to connect to the AP but when I start more than
one download/upload process the wifi hangs. ?Using a USB-Wifi dongle I
have no problems at all (just to check if all libs and applications
iwlist/wpa_supplicant are working fine ).

If anyone had faced the same issue please let me know, I will start to
debug the module right now.


Thanks in advance.




--
Hamilton Vera
int Administrator (char Network[],char ComputationalSystems[])
http://hvera.wordpress.com
