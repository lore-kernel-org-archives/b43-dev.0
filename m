From: Francesco Gringoli <francesco.gringoli@gmail.com>
Date: Thu, 20 Nov 2014 15:49:08 +0100
Subject: Broadcom Corporation BCM43228 802.11a/b/g/n
In-Reply-To: <CACna6rzHG+mrTWq55ALSsya+bM7hOuqcwDq0Y-sHcxdHEHphqQ@mail.gmail.com>
References: <546DE1DB.7090900@telenet.be>
 <CACna6rzHG+mrTWq55ALSsya+bM7hOuqcwDq0Y-sHcxdHEHphqQ@mail.gmail.com>
Message-ID: <DE52984E-3492-4EAC-9CFA-736EE76922EA@unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Ruben De Smet <ruben.de.smet@telenet.be>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Nov 20, 2014, at 1:51 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> On 20 November 2014 13:43, Ruben De Smet <ruben.de.smet@telenet.be> wrote:
>> This will be the last day I'm using my Broadcom Corporation BCM43228
>> 802.11a/b/g/n miniPCI WiFi card, as I'm switching to a faster Intel AC card.
>> Is there any interest in the linux-wireless or b43 community to have
>> this device for reverse engineering purposes? I'm able to send it for free.
> 
> Did you test this device with b43? Were there any problems with it?
By the way, I have been using a few 43228 in monitor mode with b43 and they were hanging pretty randomly (I was using 3.16.0-wl that time, apparently they were stopping receiving but they were still able to transmit). Although they work much better than 43224, especially with 48Mb/s and 54Mb/s and with higher MCS (especially with two streams), the 43224 seemed to be more stable.

Best,
-Francesco

> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
