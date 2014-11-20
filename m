From: Ruben De Smet <ruben.de.smet@telenet.be>
Date: Thu, 20 Nov 2014 21:46:27 +0100
Subject: Broadcom Corporation BCM43228 802.11a/b/g/n
In-Reply-To: <DE52984E-3492-4EAC-9CFA-736EE76922EA@unibs.it>
References: <546DE1DB.7090900@telenet.be>
 <CACna6rzHG+mrTWq55ALSsya+bM7hOuqcwDq0Y-sHcxdHEHphqQ@mail.gmail.com>
 <DE52984E-3492-4EAC-9CFA-736EE76922EA@unibs.it>
Message-ID: <546E5323.6070603@telenet.be>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Francesco Gringoli <francesco.gringoli@gmail.com>, =?UTF-8?B?UmFmYcWC?= =?UTF-8?B?IE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 20-11-14 15:49, Francesco Gringoli wrote:
> On Nov 20, 2014, at 1:51 PM, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 
>> On 20 November 2014 13:43, Ruben De Smet <ruben.de.smet@telenet.be> wrote:
>>> This will be the last day I'm using my Broadcom Corporation BCM43228
>>> 802.11a/b/g/n miniPCI WiFi card, as I'm switching to a faster Intel AC card.
>>> Is there any interest in the linux-wireless or b43 community to have
>>> this device for reverse engineering purposes? I'm able to send it for free.
>>
>> Did you test this device with b43? Were there any problems with it?
> By the way, I have been using a few 43228 in monitor mode with b43 and they were hanging pretty randomly (I was using 3.16.0-wl that time, apparently they were stopping receiving but they were still able to transmit). Although they work much better than 43224, especially with 48Mb/s and 54Mb/s and with higher MCS (especially with two streams), the 43224 seemed to be more stable.
> 
> Best,
> -Francesco
> 

Followup: just tried to place the new WLAN card in my notebook; Lenovo
doesn't like them if they're not whitelisted. I'll have to hack my bios
before I send this card over.

Yes, I tried blacklisting the proprietary wl on kernel 3.17 and
rebooting. Messed a bit around, I could scan for networks, but wasn't
able to connect to any of them. I sent a mail about that earlier to the
b43 list; got no response (possibly someone forgot to use reply all).

R

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 473 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141120/d6318c09/attachment.sig>
