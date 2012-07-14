From: Shea Levy <shea.levy@logicblox.com>
Date: Sat, 14 Jul 2012 10:06:41 -0400
Subject: Macbook Pro 9,2 (mid-2012) bcm4331 not working on Linux 3.4
In-Reply-To: <5000D94F.7000405@lwfinger.net>
References: <5000D140.4020500@logicblox.com> <5000D94F.7000405@lwfinger.net>
Message-ID: <50017CF1.60807@logicblox.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/13/2012 10:28 PM, Larry Finger wrote:
> On 07/13/2012 08:54 PM, Shea Levy wrote:
>> Hello,
>>
>> With the firmware installed, udev doesn't autoload b43 and loading it 
>> manually
>> does not create a new network interface. Is this interface supported?
>
> Check your .config and make sure that the following configuration 
> variables are set:
>
> CONFIG_B43_BCMA=y
> CONFIG_B43_PHY_HT=y
> CONFIG_BCMA=m
> CONFIG_BCMA_BLOCKIO=y
> CONFIG_BCMA_HOST_PCI_POSSIBLE=y
> CONFIG_BCMA_HOST_PCI=y
>
> Larry

Ah, that did it, thanks. Is there a place where the kernel config 
requirements are documented?

~Shea
