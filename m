From: Arend van Spriel <arend@broadcom.com>
Date: Mon, 9 Jul 2012 10:53:15 +0200
Subject: b43 does not work on broadcom 43227
In-Reply-To: <4FFA0A3C.3040204@lwfinger.net>
References: <1341782825.4900.11.camel@zeus>
 <4FFA0A3C.3040204@lwfinger.net>
Message-ID: <4FFA9BFB.3020600@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Eloy Anguiano <eloy.anguiano@uam.es>, b43-dev@lists.infradead.org, wireless <linux-wireless@vger.kernel.org>

On 07/09/2012 12:31 AM, Larry Finger wrote:
> I think that Broadcom will be changing brcmsmac to support these
> devices, but my understanding is that they are concentrating on fullmac
> devices at the moment.
> 
> Larry

That is correct. The bcm43227 is very similar to the bcm43228, the
difference being the supported bands. I have not heard back since I
forwarded your questions on 43228 support in brcmsmac. So for now I can
only say that bcm43227 and bcm43228 will be added in one patch.

Gr. AvS
