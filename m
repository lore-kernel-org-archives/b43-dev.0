From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 22 Oct 2010 17:31:31 -0500
Subject: [PATCH] b43: rfkill: use status register based on core revision
	not (PHY's)
In-Reply-To: <AANLkTika4wVhH=rGc=qgZozgbe9j-+-zzPkb1KGWLHJC@mail.gmail.com>
References: <1287779045-20257-1-git-send-email-zajec5@gmail.com>	<4CC2043D.2040909@lwfinger.net>
	<AANLkTika4wVhH=rGc=qgZozgbe9j-+-zzPkb1KGWLHJC@mail.gmail.com>
Message-ID: <4CC210C3.7010602@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 10/22/2010 04:57 PM, Rafa? Mi?ecki wrote:
> W dniu 22 pa?dziernika 2010 23:38 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net> napisa?:
>> On 10/22/2010 03:24 PM, Rafa? Mi?ecki wrote:
>>
>> As that register is present only when the core revision >= 3, this change should
>> not cause a regression. Perhaps this was an error in the RE from the start and
>> testing the phy.rev has always been wrong.
> 
> Do not blame RE team ;) It was described correctly since "ever", you
> can check it in history of:
> http://bcm-specs.sipsolutions.net/MMIO
> 
> I actually suspect this may be source of self-switching-on-off-radio
> issue described in:
> "b43legacy-phy3: Radio hardware status changed to XXX" thread.
> 
> I already mailed reporter to ask if he still has access to problematic card.

I have two cards that use b43legacy, but their physical format (PCI and Cardbus)
do not include an RFKILL switch, thus I have never tested this code with b43legacy.

Larry
