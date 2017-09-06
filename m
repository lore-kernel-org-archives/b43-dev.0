From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 6 Sep 2017 16:26:04 -0500
Subject: CVE-2017-9417 firmware fix with b43-fwcutter?
In-Reply-To: <20170906055818.GA25367@auburn.dreamhost.com>
References: <20170906055818.GA25367@auburn.dreamhost.com>
Message-ID: <335f1800-c499-4a1b-ab0e-81e463d47691@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/06/2017 12:58 AM, Drew Scott Daniels wrote:
> Hi,
> Is there newer firmware that fixes the CVE-2017-9417 vulnerability or does
> it not apply to devices supported by this driver? If there is a different
> CVE not released you can say that this doesn't apply. Is there newer
> firmware in pre-release (e.g. brcmfw_170808.tgz)or is that firmware
> unrelated (e.g. just for the BCM43430 that isn't listed as supported)?
> 
> https://blog.exodusintel.com/2017/07/26/broadpwn/ indicates the
> vulnerabilities are focused in HardMAC and seems to imply that SoftMAC isn't
> vulnerable (at least on the firmware side as the vulnerability is in the MAC
> code). The models listed as affected on that site are BCM4339 through
> BCM4361 though it seems others may be affected.

For the devices handled by b43, I do not think that Broadpwm is a problem. As 
the blog states "On laptops and desktop computers, the WiFi chipset generally 
handles the PHY layer while the kernel driver is responsible for handling layer 
3 and above.". Of course, that exploit could be a problem for mac80211, but that 
would be true for all softmac devices. A second reason is that the b43 and 
b43legacy devices do not run a general-purpose on-board processor such as ARM. 
What they have is better described as a micro controller. That firmware would be 
hard to modify for an exploit.

Larry
