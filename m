From: Ruben De Smet <ruben.de.smet@telenet.be>
Date: Thu, 20 Nov 2014 21:54:40 +0100
Subject: Broadcom Corporation BCM43228 802.11a/b/g/n
In-Reply-To: <CACna6rzHG+mrTWq55ALSsya+bM7hOuqcwDq0Y-sHcxdHEHphqQ@mail.gmail.com>
References: <546DE1DB.7090900@telenet.be>
 <CACna6rzHG+mrTWq55ALSsya+bM7hOuqcwDq0Y-sHcxdHEHphqQ@mail.gmail.com>
Message-ID: <546E5510.8090105@telenet.be>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

On 20-11-14 13:51, Rafa? Mi?ecki wrote:
> On 20 November 2014 13:43, Ruben De Smet <ruben.de.smet@telenet.be> wrote:
>> This will be the last day I'm using my Broadcom Corporation BCM43228
>> 802.11a/b/g/n miniPCI WiFi card, as I'm switching to a faster Intel AC card.
>> Is there any interest in the linux-wireless or b43 community to have
>> this device for reverse engineering purposes? I'm able to send it for free.
> 
> Did you test this device with b43? Were there any problems with it?
> 

This is what I wrote on 12 November.

--BEGIN--

Hi!

Today Fedora 20 updated to 3.17 and so I was pretty eager to try b43
instead of wl. It didn't work like I hoped it would; networkmanager was
able to scan but not to connect with my BCM43228.
I've ordered an Intel WiFi card some days ago. So if the b43 team wants
to, I can send a developer my BCM card for free for developing, reverse
engineering and debugging purposes.

(I googled an excerpt of the dmesg error message (because it had a MAC
address in it I didn't want to give to Google), but I forgot to write
down the original message:

deauthenticating by local choice (Reason: 3=DEAUTH_LEAVING)

Ruben

--END--

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 473 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141120/4f32f217/attachment.sig>
