From: David Binderman <dcb314@hotmail.com>
Date: Tue, 15 Mar 2016 10:50:39 +0000
Subject: linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c: 1851: maybe
 uninit data ?
Message-ID: <DUB128-W5980055F8A15A7CABF8D689C890@phx.gbl>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello there,

[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.gm
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.pga
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.pad
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1851]: (error) Uninitialized struct member: gains.dac

[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.gm
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.pga
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.pad
[linux-4.5/drivers/net/wireless/broadcom/b43/phy_lp.c:1853]: (error) Uninitialized struct member: gains.dac

I've had a look at the code and I can't see how local structure 'gains' get initialised.


Regards

David Binderman

 		 	   		  
