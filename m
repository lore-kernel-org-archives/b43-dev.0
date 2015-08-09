From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 9 Aug 2015 11:26:44 -0500
Subject: Wireless is not working after upgrading kernel to
 4.2.0-rc5-00183-g3fbdc37
In-Reply-To: <CAGQKE9sN1bU8YtmLZa2eLyahwjxr3mRAVmsd5ixMiXgAXGKrGQ@mail.gmail.com>
References: <CAGQKE9sN1bU8YtmLZa2eLyahwjxr3mRAVmsd5ixMiXgAXGKrGQ@mail.gmail.com>
Message-ID: <55C77F44.1080408@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/09/2015 09:35 AM, srinivas k wrote:
> Hi,
>
> I have upgrade my kernel to 4.2.0-rc5-00183-g3fbdc37, after upgrading
> i could not see my wireless is working.
>
>
> Here is the outpt of "lspci -nn -d 14e4:"
>
> penguin at penguin:~$ lspci -nn -d 14e4:
> 07:00.0 Network controller [0280]: Broadcom Corporation BCM43142
> 802.11b/g/n [14e4:4365] (rev 01)
>
> Sorry for my bad english,

According to https://wireless.wiki.kernel.org/en/users/Drivers/b43, that device 
is not supported by b43. The only driver for that device is wl, the proprietary 
driver by Broadcom. That driver needs to be reinstalled every time the kernel is 
changed. That is what you need to do.

Larry
