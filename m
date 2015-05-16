From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 16 May 2015 09:34:20 -0500
Subject: lspci not working
In-Reply-To: <CA+0W_As0c=eAijuvWfSBLMY4vj2P1-zoMsjz1mmNm0_vfepPCA@mail.gmail.com>
References: <CA+0W_As0c=eAijuvWfSBLMY4vj2P1-zoMsjz1mmNm0_vfepPCA@mail.gmail.com>
Message-ID: <5557556C.2080107@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Schmirr Wurst <schmirrwurst@gmail.com>, b43-dev@lists.infradead.org
Cc: linux-wireless <linux-wireless@vger.kernel.org>

On 05/16/2015 04:12 AM, Schmirr Wurst wrote:
> I've already posted the message once, but as it was my first, I'm not
> sure, if it worked...
>
> Actually I'm trying to get read of a t100af from asus, that has a nice
> broadcom wifi chipset, but I'm wondering that I don't see anything
> with lspci, do that mean, that the chipset is broken ?
> (I though lspci is one level deeper than driver, and I should see
> something, even if I have driver problems) ?
>
> Could just somebody tell me if I'm right or wrong ?

On Intel Bay Trail tablets, the wifi device is frequently attached using an SDIO 
bus, not a PCI connection. Accordingly, lspci will probably not show the device.

I am not familiar with any Broadcom devices that use SDIO, but I have Cc'd the 
linux-wireless mailing list. Perhaps someone there will be able to help.

I am currently working with a Winbook TW100, which is another Bay Trail device. 
It uses a Realtek RTL8723BS, which also has an SDIO interface.

Larry
