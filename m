From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 09 Sep 2012 22:04:28 -0500
Subject: Firmware missing
In-Reply-To: <BLU0-SMTP21303A6C0541F53CC55ABF6B2AC0@phx.gbl>
References: <BLU0-SMTP21303A6C0541F53CC55ABF6B2AC0@phx.gbl>
Message-ID: <504D58BC.4010408@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 09/09/2012 09:30 PM, derrick wrote:
> How do I get wireless internet on my laptop using Linux OS?? Help??! Thank you

I would start by stating what wireless device you have (lspci -nn), and what 
error you get in dmesg.

If you have a Broadcom device with PCI ID 14e4:xxxx and the firmware missing, 
you could look at 
http://wireless.kernel.org/en/users/Drivers/b43#Device_firmware_installation.


Larry
