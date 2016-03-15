From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 15 Mar 2016 09:33:26 -0500
Subject: linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c: 1851: maybe
 uninit data ?
In-Reply-To: <DUB128-W5980055F8A15A7CABF8D689C890@phx.gbl>
References: <DUB128-W5980055F8A15A7CABF8D689C890@phx.gbl>
Message-ID: <56E81D36.60004@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Binderman <dcb314@hotmail.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

On 03/15/2016 05:50 AM, David Binderman wrote:
> Hello there,
>
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.gm
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.pga
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.pad
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.dac
>
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.gm
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.pga
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.pad
> [linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.dac
>
> I've had a look at the code and I can't see how local structure 'gains' get initialised.

It does not get initialized; however, it is only used in calls to 
lpphy_papd_cal() that does nothing. Thus, no harm, no foul.

You should prepare a patch that initializes it to zero in line 1837.

Larry
