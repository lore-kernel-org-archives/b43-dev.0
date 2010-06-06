From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 06 Jun 2010 09:18:06 -0500
Subject: BCM4318 Airforce one
In-Reply-To: <AANLkTikCSHpV9v7Ht_GcRRnvlAov7MyOPw828Y9fLfuZ@mail.gmail.com>
References: <AANLkTikCSHpV9v7Ht_GcRRnvlAov7MyOPw828Y9fLfuZ@mail.gmail.com>
Message-ID: <4C0BAE1E.5080604@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/06/2010 03:08 AM, Felipe J wrote:
> Hi,
> 
> I forgot to mention on my last email that after removing that packages,
> network manager now finds a strange inexistent wireless network called (
> ??). 

Please post the entire dmesg output on pastebin and post a link.

Installing new packages on whatever distro uses apt-get should cause no
problems with b43, but you may have messed up some component that is
needed for networking. That strange network name may be a clue.

Larry
