From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 25 Feb 2015 12:54:28 -0600
Subject: bcm43142 support for b43
In-Reply-To: <trinity-0699d82e-ac2a-472c-a0a9-0817e349a194-1424804857503@3capp-mailcom-bs16>
References: <trinity-0699d82e-ac2a-472c-a0a9-0817e349a194-1424804857503@3capp-mailcom-bs16>
Message-ID: <54EE1A64.1000808@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/24/2015 01:07 PM, el mas capo wrote:
>
>
> Hi, I would like tell you to add support for bcm43142 wifi card, in b43.
> Actually it has offcial drivers (wl) wich are maybe worse drivers i have never tried (Wifi drops, Weak Signal.)
> If you look for this card on internet you will see lots of people with the same problem as me.
> Thank you for attending my suggerences.

In English, there is a huge difference between "request" and "demand". Your 
usage of "tell" in the first sentence seems like you are demanding that we write 
a driver for the BCM43142. I will assume that there is a translation problem.

Driver wl is not official Linux code. The binary blob that it contains hides all 
the details of driving your device. The only way that we could provide an 
open-source driver would be to reverse engineer that Broadcom code. Problems 
such as network drops and weak signal would be duplicated. In addition, any 
errors in the reverse engineering would likely make the stability and 
performance be worse.

Broadcom does have a small group of programmers that write open-source drivers 
for their newer devices. Perhaps they will produce the driver you need some day.

Larry
