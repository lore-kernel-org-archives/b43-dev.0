From: Ruben De Smet <ruben.de.smet@telenet.be>
Date: Wed, 12 Nov 2014 19:56:29 +0100
Subject: Looking for someone with BCM43227 and (maybe) compilation skill
 ; )
In-Reply-To: <CACna6rwde+H8K42FgsHH=FT2tW_3o_NwVbk0ZyM_L3fVtfwAsA@mail.gmail.com>
References: <CACna6rxVjnpMgQx9+d_LbROYNnnjnuMEGo-38MPwjsPtxYdN8w@mail.gmail.com>	<CACna6rx+EkoCPQ06qDTbaDFEJ1hrn_CYSbrPmosF0ikhkqDxpA@mail.gmail.com>	<53FF21AA.5040406@telenet.be>
 <CACna6rwde+H8K42FgsHH=FT2tW_3o_NwVbk0ZyM_L3fVtfwAsA@mail.gmail.com>
Message-ID: <5463AD5D.6060708@telenet.be>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

On 08/28/2014 02:39 PM, Rafa? Mi?ecki wrote:
> It has appeared that BCM43227 and BCM43228 are pretty much identical
> from programming POV. You can try 3.17-rc1 (or newer) to see if it
> supports your wireless card :)

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

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 473 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141112/4ef13359/attachment.sig>
