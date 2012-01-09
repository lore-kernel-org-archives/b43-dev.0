From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 09 Jan 2012 16:18:34 -0600
Subject: BCM43231
In-Reply-To: <CACna6rzNrFWBJ+n3n9wrnP_Gi3LKCWt+o1Gs38_EjkMgG_k8vg@mail.gmail.com>
References: <CAEWwF+bnM0bxbZR6B57H_nv3fkUdhP-ytAu30MLhUWq7QxB3GQ@mail.gmail.com>
 <CACna6rzNrFWBJ+n3n9wrnP_Gi3LKCWt+o1Gs38_EjkMgG_k8vg@mail.gmail.com>
Message-ID: <4F0B67BA.20207@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, Abimanyu Gottumukkala <me@abimanyu.in>, linux-wireless@vger.kernel.org, Arend van Spriel <arend@broadcom.com>

On 01/09/2012 02:12 PM, Rafa? Mi?ecki wrote:
> 2011/12/30 Abimanyu Gottumukkala<me@abimanyu.in>:
>> Does any one have status or any info on BCM43231 USB drivers?
>
> I've received my WNA3100, 0846:9020 (maybe BCM43231, can't confirm).
>
> It works with ndiswrapper and bcmwlhigh6, I can scan and even connect
> to my WPA2 network.
>
> Unfortunately I've no idea what hardware is this. I've dumped
> ndiswrapper USB operations but they don't tell me a single thing.
> Initialization is represented by only ~1000 lines in dumps and I've
> connected in next ~1500 lines of USB dump. I've been using "usbmon" to
> dump traffic.

The evidence points to some kind of Broadcom chip. The USB data base says that 
an ID of "0846:9020" is a "WNA3100(v1) Wireless-N 300 [Broadcom BCM43231]". In 
addition, the Windows driver name of bcmwlhigh6 indicates a BroadCoM WL driver 
of some sort. Given the relatively small amount of initialization traffic, it 
must be a fullmac device that likely does not need external firmware.

I remember seeing some mail about the Broadcom guys working on a Linux driver 
for a USB fullmac device. Is this the one? (I added Arend to the Cc.)

Larry
